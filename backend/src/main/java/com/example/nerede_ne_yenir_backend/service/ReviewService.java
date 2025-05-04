package com.example.nerede_ne_yenir_backend.service;

import java.util.List;

import com.example.nerede_ne_yenir_backend.dto.ReviewDTO;

public interface ReviewService {
    List<ReviewDTO> getReviewsByRestaurant(Long restaurantId);

    ReviewDTO addReview(ReviewDTO dto); 
}
