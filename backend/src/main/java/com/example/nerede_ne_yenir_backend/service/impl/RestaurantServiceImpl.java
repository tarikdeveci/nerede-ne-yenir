package com.example.nerede_ne_yenir_backend.service.impl;

import com.example.nerede_ne_yenir_backend.dto.RestaurantDTO;
import com.example.nerede_ne_yenir_backend.mapper.RestaurantMapper;
import com.example.nerede_ne_yenir_backend.model.Restaurant;
import com.example.nerede_ne_yenir_backend.repository.RestaurantRepository;
import com.example.nerede_ne_yenir_backend.service.RestaurantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service // Spring bunu otomatik tanır
public class RestaurantServiceImpl implements RestaurantService {

    @Autowired
    private RestaurantRepository restaurantRepository;

    @Override
    public List<RestaurantDTO> getAllRestaurants() {
        List<Restaurant> restaurants = restaurantRepository.findAll();
        return restaurants.stream()
                .map(RestaurantMapper::toDTO)
                .collect(Collectors.toList());
    }

    @Override
    public List<RestaurantDTO> getRestaurantsByCategory(Long categoryId) {
        List<Restaurant> restaurants = restaurantRepository.findByCategory_CategoryId(categoryId);
        return restaurants.stream()
                .map(RestaurantMapper::toDTO)
                .collect(Collectors.toList());
    }
}
