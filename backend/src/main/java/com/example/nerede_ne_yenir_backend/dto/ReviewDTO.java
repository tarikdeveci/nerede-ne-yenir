package com.example.nerede_ne_yenir_backend.dto;

import lombok.Data;


@Data
public class ReviewDTO {
    private Long reviewId;
    private String reviewerFirstName;
    private String reviewerLastName;
    private Integer rating;
    private String comment;
    private String restaurantName; 
    private Long restaurantId;     
}
