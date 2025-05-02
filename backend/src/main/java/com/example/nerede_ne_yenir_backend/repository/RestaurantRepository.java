package com.example.nerede_ne_yenir_backend.repository;

import com.example.nerede_ne_yenir_backend.model.Restaurant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Restaurant tablosu için CRUD işlemleri ve özel sorgular
 */
@Repository
public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {

    /**
     * Belirli bir kategoriye ait restoranları getir
     * Örn: Döner kategorisindeki tüm restoranlar
     */
    List<Restaurant> findByCategory_CategoryId(Long categoryId);

    /**
     * 🔍 Filtreleme sorgusu: kategori, puan, yorum sayısı ve fiyat aralığına göre
     * Not: priceRange String olduğundan burada dönüştürme Java tarafında yapılır.
     */
    @Query("SELECT r FROM Restaurant r " +
           "WHERE (:category IS NULL OR r.category.name = :category) " +
           "AND (:minRating IS NULL OR r.averageRating >= :minRating) " +
           "AND (:minReviews IS NULL OR r.reviewCount >= :minReviews)")
    List<Restaurant> filterRestaurants(
            @Param("category") String category,
            @Param("minRating") Double minRating,
            @Param("minReviews") Integer minReviews,
            @Param("minPrice") Integer minPrice,
            @Param("maxPrice") Integer maxPrice
    );
}
