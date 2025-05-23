package com.example.nerede_ne_yenir_backend.model;

import jakarta.persistence.*;
import lombok.*;


@Entity
@Table(name = "food_category")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class FoodCategory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) 
    private Long categoryId;

    @Column(nullable = false, unique = true)
    private String categoryName; 
}
