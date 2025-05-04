package com.example.nerede_ne_yenir_backend.model;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDateTime;


@Entity
@Table(name = "review")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long reviewId;

    @ManyToOne 
    @JoinColumn(name = "restaurant_id", nullable = false)
    private Restaurant restaurant;

    private String reviewerFirstName; 
    private String reviewerLastName;  

    private Integer rating;           
    @Column(columnDefinition = "TEXT")
    private String comment;           

    private LocalDateTime createdAt;  
}
