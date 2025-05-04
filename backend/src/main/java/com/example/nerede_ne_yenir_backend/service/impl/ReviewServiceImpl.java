package com.example.nerede_ne_yenir_backend.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.nerede_ne_yenir_backend.dto.ReviewDTO;
import com.example.nerede_ne_yenir_backend.mapper.ReviewMapper;
import com.example.nerede_ne_yenir_backend.model.Restaurant;
import com.example.nerede_ne_yenir_backend.model.Review;
import com.example.nerede_ne_yenir_backend.observer.LoggerObserver;
import com.example.nerede_ne_yenir_backend.observer.RatingUpdater;
import com.example.nerede_ne_yenir_backend.observer.ReviewEventManager;
import com.example.nerede_ne_yenir_backend.repository.RestaurantRepository;
import com.example.nerede_ne_yenir_backend.repository.ReviewRepository;
import com.example.nerede_ne_yenir_backend.service.ReviewService;

@Service
public class ReviewServiceImpl implements ReviewService {

    @Autowired
    private ReviewRepository reviewRepository;

    @Autowired
    private RestaurantRepository restaurantRepository;

    @Override
    public List<ReviewDTO> getReviewsByRestaurant(Long restaurantId) {
        List<Review> reviews = reviewRepository.findByRestaurant_RestaurantId(restaurantId);
        return reviews.stream()
                .map(ReviewMapper::toDTO)
                .collect(Collectors.toList());
    }

    @Override
    @Transactional
    public ReviewDTO addReview(ReviewDTO dto) {
        System.out.println(">>> addReview başladı");
        System.out.println(">>> DTO: " + dto);
        System.out.println(">>> restaurantId: " + dto.getRestaurantId());

        // 1. Restoranı bul
        Restaurant restaurant = restaurantRepository.findById(dto.getRestaurantId())
            .orElseThrow(() -> new RuntimeException("Restoran bulunamadı"));
        System.out.println(">>> restoran bulundu: " + restaurant.getRestaurantName());

        // 2. Yeni yorumu kaydet
        Review review = ReviewMapper.toEntity(dto, restaurant);
        System.out.println(">>> review objesi oluşturuldu");
        Review saved = reviewRepository.save(review);
        System.out.println(">>> yorum kaydedildi: ID=" + saved.getReviewId());

        // 3. Ortalama puan ve yorum sayısını güncelle
        Integer reviewCount = restaurant.getReviewCount();
        int oldCount = reviewCount != null ? reviewCount : 0;
        Double averageRating = restaurant.getAverageRating();
        double oldAvg = averageRating != null ? averageRating : 0.0;
        int newCount   = oldCount + 1;
        double newAvg  = (oldAvg * oldCount + dto.getRating()) / newCount;
        restaurant.setReviewCount(newCount);
        restaurant.setAverageRating(newAvg);
        restaurantRepository.save(restaurant);
        System.out.println(">>> restoran güncellendi: newCount=" + newCount + ", newAvg=" + newAvg);

        // 4. Gözlemcileri tetikle (Observer Pattern)
        ReviewEventManager eventManager = new ReviewEventManager();
        eventManager.subscribe(new LoggerObserver());
        eventManager.subscribe(new RatingUpdater());
        eventManager.notifyAll(restaurant, saved);

        // 5. Kaydedilen yorumu DTO olarak döndür
        return ReviewMapper.toDTO(saved);
    }
}
