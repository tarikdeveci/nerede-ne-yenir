package com.example.nerede_ne_yenir_backend.model;

import jakarta.persistence.*;
import lombok.*;

/**
 * FoodCategory: Yiyecek kategorilerini temsil eder (örnek: Döner, Tatlı)
 */
@Entity
@Table(name = "food_category")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class FoodCategory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Otomatik artan ID
    private Long categoryId;

    @Column(nullable = false, unique = true)
    private String categoryName; // Örn: "Pizza", "Ev Yemekleri"
}
