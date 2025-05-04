package com.example.nerede_ne_yenir_backend.repository;

import com.example.nerede_ne_yenir_backend.model.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {

    
    List<Review> findByRestaurant_RestaurantId(Long restaurantId);

    
    long countByRestaurant_RestaurantId(Long restaurantId);
}
