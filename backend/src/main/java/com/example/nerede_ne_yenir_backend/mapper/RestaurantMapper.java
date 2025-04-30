package com.example.nerede_ne_yenir_backend.mapper;

import com.example.nerede_ne_yenir_backend.dto.RestaurantDTO;
import com.example.nerede_ne_yenir_backend.model.Restaurant;

public class RestaurantMapper {

    // Kimsenin bu sınıftan nesne oluşturamaması için private constructor
    private RestaurantMapper() {
        // static class
    }

    // Entity → DTO dönüşümü
    public static RestaurantDTO toDTO(Restaurant restaurant) {
        RestaurantDTO dto = new RestaurantDTO();

        dto.setRestaurantId(restaurant.getRestaurantId());
        dto.setRestaurantName(restaurant.getRestaurantName());
        dto.setPriceRange(restaurant.getPriceRange());
        dto.setAverageRating(restaurant.getAverageRating());
        dto.setReviewCount(restaurant.getReviewCount());
        dto.setCategoryName(restaurant.getCategory().getCategoryName());

        return dto;
    }
}
