package com.example.nerede_ne_yenir_backend.repository;

import com.example.nerede_ne_yenir_backend.model.FoodCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * FoodCategory tablosu için CRUD işlemlerini sağlar.
 */
@Repository
public interface FoodCategoryRepository extends JpaRepository<FoodCategory, Long> {
    // Gerekirse burada özel sorgular tanımlayabilirsin.
}
