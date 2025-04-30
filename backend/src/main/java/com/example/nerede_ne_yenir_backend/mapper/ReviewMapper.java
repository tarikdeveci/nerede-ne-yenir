package com.example.nerede_ne_yenir_backend.mapper;

import com.example.nerede_ne_yenir_backend.dto.ReviewDTO;
import com.example.nerede_ne_yenir_backend.model.Review;

public class ReviewMapper {

    // Kimsenin bu sınıftan nesne oluşturamaması için private constructor
    private ReviewMapper() {
        // static class
    }

    // Entity → DTO dönüşümü
    public static ReviewDTO toDTO(Review review) {
        ReviewDTO dto = new ReviewDTO();

        dto.setReviewId(review.getReviewId());
        dto.setReviewerFirstName(review.getReviewerFirstName());
        dto.setReviewerLastName(review.getReviewerLastName());
        dto.setRating(review.getRating());
        dto.setComment(review.getComment());
        dto.setRestaurantName(review.getRestaurant().getRestaurantName());

        return dto;
    }
}
