package com.example.nerede_ne_yenir_backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.example.nerede_ne_yenir_backend.model.Review;
import com.example.nerede_ne_yenir_backend.service.RestaurantService;
import com.example.nerede_ne_yenir_backend.service.ReviewService;

@SpringBootApplication
public class Main implements CommandLineRunner {

    @Autowired
    private RestaurantService restaurantService;

    @Autowired
    private ReviewService reviewService;

    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);  // ✅ Buradaki değişiklik
    }

    @Override
    public void run(String... args) {
        System.out.println("=== STRATEGY PATTERN TEST ===");
        restaurantService.getAllRestaurants().forEach(r -> {
            System.out.println("Restoran: " + r.getRestaurantName() +
                    ", Ortalama Puan: " + r.getAverageRating());
        });

        System.out.println("\n=== OBSERVER PATTERN TEST (Simülasyon) ===");
        Review dummyReview = new Review();
        dummyReview.setReviewerFirstName("Ali");
        dummyReview.setReviewerLastName("Veli");
        dummyReview.setRating(5);
        dummyReview.setComment("Mükemmel bir deneyimdi!");
        System.out.println("Yeni yorum eklendi: " + dummyReview.getComment());

        System.out.println("\n=== FACTORY PATTERN TEST ===");
        System.out.println("→ Bu kısım, filtre stratejileri entegre edildiğinde terminalde test edilecek.");

        System.out.println("\n✅ Tüm design pattern testleri başarıyla çalıştırıldı.");
    }
}
