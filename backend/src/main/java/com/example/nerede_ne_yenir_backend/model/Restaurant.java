package com.example.nerede_ne_yenir_backend.model;

import jakarta.persistence.*;
import lombok.*;

/**
 * Restaurant: Her restoran bir kategoriye bağlıdır.
 */
@Entity
@Table(name = "restaurant")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Restaurant {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long restaurantId;

    @ManyToOne // Bir restoran sadece bir kategoriye ait olur
    @JoinColumn(name = "category_id", nullable = false)
    private FoodCategory category; // Restoranın ait olduğu kategori

    @Column(nullable = false)
    private String restaurantName;

    private String priceRange; // Örnek: ₺, ₺₺, ₺₺₺

    private Double averageRating; // Yorumlardan ortalama puan

    private Integer reviewCount; // Toplam yorum sayısı
}
