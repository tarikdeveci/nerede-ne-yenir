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

    @Override
    public List<RestaurantDTO> filterRestaurants(
            String category,
            Double minRating,
            Integer minReviews,
            Integer minPrice,
            Integer maxPrice
    ) {
        // 1) DB’den kategori, puan ve yorum filtresiyle çek
        List<Restaurant> preFiltered = restaurantRepository.filterRestaurants(category, minRating, minReviews);

        // 2) Java tarafında priceRange string’ini parse edip fiyat filtresi uygula
        List<Restaurant> priceFiltered = preFiltered.stream()
                .filter(r -> {
                    try {
                        String pr = r.getPriceRange();
                        if (pr == null || !pr.contains("-")) return false;

                        String[] parts = pr.split("-");
                        if (parts.length != 2) return false;

                        int lower = Integer.parseInt(parts[0].trim());
                        int upper = Integer.parseInt(parts[1].trim());

                        // Alt sınır filtresi (minPrice)
                        if (minPrice != null && lower < minPrice) return false;
                        // Üst sınır filtresi (maxPrice)
                        if (maxPrice != null && upper > maxPrice) return false;

                        return true;
                    } catch (Exception e) {
                        // Hatalı priceRange verisi varsa filtre dışı bırak
                        return false;
                    }
                })
                .collect(Collectors.toList());

        // 3) DTO’ya çevir ve döndür
        return priceFiltered.stream()
                .map(RestaurantMapper::toDTO)
                .collect(Collectors.toList());
    }

} // class RestaurantServiceImpl
