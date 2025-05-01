package com.example.nerede_ne_yenir_backend.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.nerede_ne_yenir_backend.dto.ReviewDTO;
import com.example.nerede_ne_yenir_backend.mapper.ReviewMapper;
import com.example.nerede_ne_yenir_backend.model.Restaurant;
import com.example.nerede_ne_yenir_backend.model.Review;
import com.example.nerede_ne_yenir_backend.repository.RestaurantRepository;
import com.example.nerede_ne_yenir_backend.repository.ReviewRepository;
import com.example.nerede_ne_yenir_backend.service.ReviewService;

@Service
public class ReviewServiceImpl implements ReviewService {

    @Autowired
    private ReviewRepository reviewRepository;

    @Autowired
    private RestaurantRepository restaurantRepository; // yeni eklendi

    @Override
    public List<ReviewDTO> getReviewsByRestaurant(Long restaurantId) {
        List<Review> reviews = reviewRepository.findByRestaurant_RestaurantId(restaurantId);
        return reviews.stream()
                .map(ReviewMapper::toDTO)
                .collect(Collectors.toList());
    }

    @Override
    public ReviewDTO addReview(ReviewDTO dto) {
        System.out.println(">>> addReview başladı");
        System.out.println(">>> DTO: " + dto);
        System.out.println(">>> restaurantId: " + dto.getRestaurantId());
    
        Restaurant restaurant = restaurantRepository.findById(dto.getRestaurantId())
            .orElseThrow(() -> new RuntimeException("Restoran bulunamadı"));
    
        System.out.println(">>> restoran bulundu: " + restaurant.getRestaurantName());
    
        Review review = ReviewMapper.toEntity(dto, restaurant);
        System.out.println(">>> review objesi oluşturuldu");
    
        Review saved = reviewRepository.save(review);
        System.out.println(">>> kayıt tamam");
    
        return ReviewMapper.toDTO(saved);
    }
    
}
