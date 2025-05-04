package com.example.nerede_ne_yenir_backend.model;

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

    @ManyToOne
    @JoinColumn(name = "category_id", nullable = false)
    private FoodCategory category;

    @Column(nullable = false)
    private String restaurantName;

    private String priceRange;

    private Double averageRating;

    private Integer reviewCount;

    private String imageUrl; 
}
