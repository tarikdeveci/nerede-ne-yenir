package com.example.nerede_ne_yenir_backend.dto;

import lombok.Data;

// Restoranı frontend'e sade veri olarak göndermek için kullanılan DTO
@Data
public class RestaurantDTO {
    private Long restaurantId;
    private String restaurantName;
    private String priceRange;
    private Double averageRating;
    private Integer reviewCount;
    private String categoryName; // Kategori nesnesi yerine sadece ismi
}
