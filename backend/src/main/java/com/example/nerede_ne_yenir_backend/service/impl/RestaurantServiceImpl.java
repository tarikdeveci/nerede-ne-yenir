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

@Service
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

    // 🔍 Filtreli restoranları getir (priceRange dahil)
    @Override
    public List<RestaurantDTO> filterRestaurants(String category, Double minRating, Integer minReviews, Integer minPrice, Integer maxPrice) {
        // İlk olarak DB'den rating, review, category filtreli veri çekiyoruz
        List<Restaurant> preFiltered = restaurantRepository.filterRestaurants(category, minRating, minReviews, null, null);

        // Ardından Java tarafında priceRange string’ini parçalayarak filtre uyguluyoruz
        List<Restaurant> priceFiltered = preFiltered.stream()
                .filter(restaurant -> {
                    try {
                        String[] prices = restaurant.getPriceRange().split("-");
                        int lower = Integer.parseInt(prices[0].trim());
                        int upper = Integer.parseInt(prices[1].trim());

                        if (minPrice != null && upper < minPrice) return false;
                        if (maxPrice != null && lower > maxPrice) return false;

                        return true;
                    } catch (Exception e) {
                        // priceRange geçersizse filtre dışı bırak
                        return false;
                    }
                })
                .collect(Collectors.toList());

        return priceFiltered.stream()
                .map(RestaurantMapper::toDTO)
                .collect(Collectors.toList());
    }
}
