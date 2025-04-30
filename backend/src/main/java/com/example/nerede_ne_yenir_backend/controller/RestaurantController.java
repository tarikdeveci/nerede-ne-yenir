package com.example.nerede_ne_yenir_backend.controller;

import com.example.nerede_ne_yenir_backend.dto.RestaurantDTO;
import com.example.nerede_ne_yenir_backend.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController // Bu sınıf REST API'dir
@RequestMapping("/api/restaurants") // Tüm istekler /api/restaurants ile başlar
public class RestaurantController {

    @Autowired
    private RestaurantService restaurantService;

    // Tüm restoranları getir
    @GetMapping
    public List<RestaurantDTO> getAllRestaurants() {
        return restaurantService.getAllRestaurants();
    }

    // Belirli bir kategoriye ait restoranları getir
    @GetMapping("/category/{categoryId}")
    public List<RestaurantDTO> getRestaurantsByCategory(@PathVariable Long categoryId) {
        return restaurantService.getRestaurantsByCategory(categoryId);
    }
}
