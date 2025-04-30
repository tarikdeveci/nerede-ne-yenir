package com.example.nerede_ne_yenir_backend.service.impl;

import com.example.nerede_ne_yenir_backend.dto.ReviewDTO;
import com.example.nerede_ne_yenir_backend.mapper.ReviewMapper;
import com.example.nerede_ne_yenir_backend.model.Review;
import com.example.nerede_ne_yenir_backend.repository.ReviewRepository;
import com.example.nerede_ne_yenir_backend.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ReviewServiceImpl implements ReviewService {

    @Autowired
    private ReviewRepository reviewRepository;

    @Override
    public List<ReviewDTO> getReviewsByRestaurant(Long restaurantId) {
        List<Review> reviews = reviewRepository.findByRestaurant_RestaurantId(restaurantId);
        return reviews.stream()
                .map(ReviewMapper::toDTO)
                .collect(Collectors.toList());
    }
}
