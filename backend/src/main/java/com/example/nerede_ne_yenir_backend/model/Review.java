package com.example.nerede_ne_yenir_backend.model;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDateTime;

/**
 * Review: Kullanıcıların restoranlara verdiği yorum ve puanlar
 */
@Entity
@Table(name = "review")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long reviewId;

    @ManyToOne // Her yorum bir restorana aittir
    @JoinColumn(name = "restaurant_id", nullable = false)
    private Restaurant restaurant;

    private String reviewerFirstName; // Yorumu yapan kişinin adı
    private String reviewerLastName;  // Soyadı

    private Integer rating;           // 1–5 arası puan
    @Column(columnDefinition = "TEXT")
    private String comment;           // Yorum metni

    private LocalDateTime createdAt;  // Yorum tarihi
}
