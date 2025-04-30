package com.example.neredeneenir.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "food_category") // SQL tablosunun ismi
@Data // Getter, Setter, toString gibi metotları otomatik ekler (Lombok)
@NoArgsConstructor
@AllArgsConstructor
public class FoodCategory {

    @Id // Primary key olduğunu belirtir
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Otomatik artan
    private Long categoryId;

    @Column(nullable = false, unique = true)
    private String categoryName; // Örn: "Döner", "Tatlı"
}
