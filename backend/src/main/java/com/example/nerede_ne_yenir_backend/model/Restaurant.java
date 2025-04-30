package com.example.neredeneenir.model;

import jakarta.persistence.*;
import lombok.*;

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
    private FoodCategory category;

    @Column(nullable = false)
    private String restaurantName;

    private String priceRange; // ₺, ₺₺, ₺₺₺

    private Double averageRating; // Otomatik hesaplanacak

    private Integer reviewCount; // Otomatik artacak
}
