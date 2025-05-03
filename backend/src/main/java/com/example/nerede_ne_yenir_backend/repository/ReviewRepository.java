package com.example.nerede_ne_yenir_backend.repository;

import com.example.nerede_ne_yenir_backend.model.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Review tablosu için CRUD işlemleri ve özel sorgular
 */
@Repository
public interface ReviewRepository extends JpaRepository<Review, Long> {

    /**
     * Belirli bir restorana ait tüm yorumları getir
     */
    List<Review> findByRestaurant_RestaurantId(Long restaurantId);

    /**
     * Belirli bir restorana ait yorum sayısını döner
     */
    long countByRestaurant_RestaurantId(Long restaurantId);
}
