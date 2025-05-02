package com.example.nerede_ne_yenir_backend.repository;

import com.example.nerede_ne_yenir_backend.model.Restaurant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {

    List<Restaurant> findByCategory_CategoryId(Long categoryId);

    @Query("SELECT r FROM Restaurant r " +
           "WHERE (:category IS NULL OR r.category.categoryName = :category) " +
           "AND (:minRating IS NULL OR r.averageRating >= :minRating) " +
           "AND (:minReviews IS NULL OR r.reviewCount >= :minReviews)")
    List<Restaurant> filterRestaurants(
            @Param("category") String category,
            @Param("minRating") Double minRating,
            @Param("minReviews") Integer minReviews
    );
}

