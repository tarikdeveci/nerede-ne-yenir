package com.example.nerede_ne_yenir_backend.service;

import com.example.nerede_ne_yenir_backend.dto.RestaurantDTO;
import java.util.List;

// Restoranla ilgili işlemleri tanımlar
public interface RestaurantService {

    List<RestaurantDTO> getAllRestaurants();

    List<RestaurantDTO> getRestaurantsByCategory(Long categoryId);

    // 🔍 Filtreleme işlemi için yeni method
    List<RestaurantDTO> filterRestaurants(String category, Double minRating, Integer minReviews, Integer minPrice, Integer maxPrice);
}
