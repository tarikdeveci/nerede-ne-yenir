package com.example.nerede_ne_yenir_backend.controller;

import com.example.nerede_ne_yenir_backend.dto.RestaurantDTO;
import com.example.nerede_ne_yenir_backend.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/restaurants")
public class RestaurantController {

    @Autowired
    private RestaurantService restaurantService;

    @GetMapping
    public List<RestaurantDTO> getAllRestaurants() {
        return restaurantService.getAllRestaurants();
    }

    @GetMapping("/category/{categoryId}")
    public List<RestaurantDTO> getRestaurantsByCategory(@PathVariable Long categoryId) {
        return restaurantService.getRestaurantsByCategory(categoryId);
    }

    // 🔍 Filtreleme
    @GetMapping("/filter")
    public List<RestaurantDTO> filterRestaurants(
            @RequestParam(required = false) String category,
            @RequestParam(required = false) Double minRating,
            @RequestParam(required = false) Integer minReviews,
            @RequestParam(required = false) Integer minPrice,
            @RequestParam(required = false) Integer maxPrice
    ) {
        return restaurantService.filterRestaurants(category, minRating, minReviews, minPrice, maxPrice);
    }

    // 🔥 Yeni: ID ile restoran getirme
    @GetMapping("/{id}")
    public RestaurantDTO getRestaurantById(@PathVariable Long id) {
        return restaurantService.getRestaurantById(id);
    }
}
