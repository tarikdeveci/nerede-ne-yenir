package com.example.nerede_ne_yenir_backend.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.nerede_ne_yenir_backend.dto.RestaurantDTO;
import com.example.nerede_ne_yenir_backend.mapper.RestaurantMapper;
import com.example.nerede_ne_yenir_backend.model.Restaurant;
import com.example.nerede_ne_yenir_backend.repository.RestaurantRepository;
import com.example.nerede_ne_yenir_backend.repository.ReviewRepository;
import com.example.nerede_ne_yenir_backend.service.RestaurantService;
import com.example.nerede_ne_yenir_backend.service.filter.FilterStrategy;
import com.example.nerede_ne_yenir_backend.service.filter.FilterStrategyFactory;

@Service
public class RestaurantServiceImpl implements RestaurantService {

    @Autowired
    private RestaurantRepository restaurantRepository;

    @Autowired
    private ReviewRepository reviewRepository;

    @Override
    public List<RestaurantDTO> getAllRestaurants() {
        List<Restaurant> restaurants = restaurantRepository.findAll();
        return restaurants.stream()
                .map(r -> {
                    RestaurantDTO dto = RestaurantMapper.toDTO(r);
                    dto.setReviewCount((int) reviewRepository.countByRestaurant_RestaurantId(r.getRestaurantId()));
                    return dto;
                })
                .collect(Collectors.toList());
    }

    @Override
    public List<RestaurantDTO> getRestaurantsByCategory(Long categoryId) {
        List<Restaurant> restaurants = restaurantRepository.findByCategory_CategoryId(categoryId);
        return restaurants.stream()
                .map(r -> {
                    RestaurantDTO dto = RestaurantMapper.toDTO(r);
                    dto.setReviewCount((int) reviewRepository.countByRestaurant_RestaurantId(r.getRestaurantId()));
                    return dto;
                })
                .collect(Collectors.toList());
    }

    @Override
    public List<RestaurantDTO> filterRestaurants(String category, Double minRating, Integer minReviews, Integer minPrice, Integer maxPrice) {
        List<Restaurant> preFiltered = restaurantRepository.filterRestaurants(category, minRating, minReviews);

        
        FilterStrategy priceStrategy = FilterStrategyFactory.getStrategy("price", minPrice != null ? minPrice : 0, maxPrice != null ? maxPrice : Integer.MAX_VALUE);

        List<Restaurant> priceFiltered = preFiltered.stream()
                .filter(priceStrategy::matches)
                .collect(Collectors.toList());

        return priceFiltered.stream()
                .map(r -> {
                    RestaurantDTO dto = RestaurantMapper.toDTO(r);
                    dto.setReviewCount((int) reviewRepository.countByRestaurant_RestaurantId(r.getRestaurantId()));
                    return dto;
                })
                .collect(Collectors.toList());
    }

    @Override
    public RestaurantDTO getRestaurantById(Long id) {
        Restaurant r = restaurantRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Restoran bulunamadı"));
        RestaurantDTO dto = RestaurantMapper.toDTO(r);
        dto.setReviewCount((int) reviewRepository.countByRestaurant_RestaurantId(r.getRestaurantId()));
        return dto;
    }
}
