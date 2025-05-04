package com.example.nerede_ne_yenir_backend.mapper;

import com.example.nerede_ne_yenir_backend.dto.ReviewDTO;
import com.example.nerede_ne_yenir_backend.model.Restaurant;
import com.example.nerede_ne_yenir_backend.model.Review;

public class ReviewMapper {

   
    private ReviewMapper() {
        // static class
    }

    public static ReviewDTO toDTO(Review review) {
        ReviewDTO dto = new ReviewDTO();
        dto.setReviewId(review.getReviewId());
        dto.setReviewerFirstName(review.getReviewerFirstName());
        dto.setReviewerLastName(review.getReviewerLastName());
        dto.setRating(review.getRating());
        dto.setComment(review.getComment());
    
        if (review.getRestaurant() != null) {
            dto.setRestaurantName(review.getRestaurant().getRestaurantName());
            dto.setRestaurantId(review.getRestaurant().getRestaurantId());
        }
    
        return dto;
    }

    public static Review toEntity(ReviewDTO dto, Restaurant restaurant) {
        Review review = new Review();
        review.setReviewerFirstName(dto.getReviewerFirstName());
        review.setReviewerLastName(dto.getReviewerLastName());
        review.setRating(dto.getRating());
        review.setComment(dto.getComment());
        review.setRestaurant(restaurant);
        review.setCreatedAt(java.time.LocalDateTime.now());
        return review;
    }
}