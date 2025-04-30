package com.example.nerede_ne_yenir_backend.repository;

import com.example.nerede_ne_yenir_backend.model.Restaurant;
import org.springframework.data.jpa.repository.JpaRepository;
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
}
