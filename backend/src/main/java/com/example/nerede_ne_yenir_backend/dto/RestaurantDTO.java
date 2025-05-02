package com.example.nerede_ne_yenir_backend.dto;

import lombok.Data;

@Data
public class RestaurantDTO {
    private Long restaurantId;
    private String restaurantName;
    private String priceRange;
    private Double averageRating;
    private Integer reviewCount;
    private String categoryName;
    private String imageUrl; // 🆕 Görsel linki
}
