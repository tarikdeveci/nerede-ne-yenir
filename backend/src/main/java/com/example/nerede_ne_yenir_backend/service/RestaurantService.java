package com.example.nerede_ne_yenir_backend.service;

import com.example.nerede_ne_yenir_backend.dto.RestaurantDTO;
import java.util.List;

public interface RestaurantService {
    List<RestaurantDTO> getAllRestaurants();
    List<RestaurantDTO> getRestaurantsByCategory(Long categoryId);
    List<RestaurantDTO> filterRestaurants(String category, Double minRating, Integer minReviews, Integer minPrice, Integer maxPrice);

    // 🔥 Yeni: Tek restoran detayını getirme
    RestaurantDTO getRestaurantById(Long id);
}
