package com.example.nerede_ne_yenir_backend.dto;

import lombok.Data;

// Yorumu sade şekilde dış dünyaya aktarmak için DTO
@Data
public class ReviewDTO {
    private Long reviewId;
    private String reviewerFirstName;
    private String reviewerLastName;
    private Integer rating;
    private String comment;
    private String restaurantName; // Yorumu yapılan restoranın adı
}
