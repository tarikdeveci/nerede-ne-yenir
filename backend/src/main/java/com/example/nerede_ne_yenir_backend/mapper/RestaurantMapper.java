package com.example.nerede_ne_yenir_backend.mapper;

import com.example.nerede_ne_yenir_backend.dto.RestaurantDTO;
import com.example.nerede_ne_yenir_backend.model.Restaurant;

public class RestaurantMapper {

    private RestaurantMapper() {
        // static util class
    }

    public static RestaurantDTO toDTO(Restaurant restaurant) {
        RestaurantDTO dto = new RestaurantDTO();

        dto.setRestaurantId(restaurant.getRestaurantId());
        dto.setRestaurantName(restaurant.getRestaurantName());
        dto.setPriceRange(restaurant.getPriceRange());
        dto.setAverageRating(restaurant.getAverageRating());
        dto.setReviewCount(restaurant.getReviewCount());
        dto.setCategoryName(restaurant.getCategory().getCategoryName());
        dto.setImageUrl(restaurant.getImageUrl()); // 🆕 DTO'ya imageUrl aktar

        return dto;
    }
}
