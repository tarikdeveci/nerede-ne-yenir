package com.example.nerede_ne_yenir_backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.example.nerede_ne_yenir_backend.model.Restaurant;
import com.example.nerede_ne_yenir_backend.model.Review;
import com.example.nerede_ne_yenir_backend.observer.LoggerObserver;
import com.example.nerede_ne_yenir_backend.observer.RatingUpdater;
import com.example.nerede_ne_yenir_backend.observer.ReviewEventManager;
import com.example.nerede_ne_yenir_backend.service.RestaurantService;
import com.example.nerede_ne_yenir_backend.service.filter.FilterStrategy;
import com.example.nerede_ne_yenir_backend.service.filter.FilterStrategyFactory;

@SpringBootApplication
public class Main implements CommandLineRunner {

    @Autowired
    private RestaurantService restaurantService;

    // ReviewService henüz terminalde kullanılmadığı için yoruma alındı
    // @Autowired
    // private ReviewService reviewService;

    public static void main(String[] args) {
        SpringApplication.run(Main.class, args);
    }

    @Override
    public void run(String... args) {

        // STRATEGY PATTERN TESTİ
        System.out.println("=== STRATEGY PATTERN TEST ===");
        restaurantService.getAllRestaurants().forEach(r -> {
            System.out.println("Restoran: " + r.getRestaurantName() +
                    ", Ortalama Puan: " + r.getAverageRating());
        });

        // FACTORY PATTERN TESTİ
        System.out.println("\n=== FACTORY PATTERN TEST ===");
        FilterStrategy priceStrategy = FilterStrategyFactory.getStrategy("price", 50, 150);

        restaurantService.getAllRestaurants().stream()
            .filter(dto -> {
                Restaurant r = new Restaurant();
                r.setPriceRange(dto.getPriceRange()); // sadece test için minimal nesne yaratıldı
                return priceStrategy.matches(r);
            })
            .forEach(dto -> System.out.println("Filtre geçti: " + dto.getRestaurantName()));

        // OBSERVER PATTERN TESTİ
        System.out.println("\n=== OBSERVER PATTERN TEST (Simülasyon) ===");
        Review dummyReview = new Review();
        dummyReview.setReviewerFirstName("Ali");
        dummyReview.setReviewerLastName("Veli");
        dummyReview.setRating(5);
        dummyReview.setComment("Mükemmel bir deneyimdi!");
        dummyReview.setRestaurant(new Restaurant()); // sadece test için boş nesne

        ReviewEventManager em = new ReviewEventManager();
        em.subscribe(new LoggerObserver());
        em.subscribe(new RatingUpdater());
        em.notifyAll(dummyReview.getRestaurant(), dummyReview);

        System.out.println("\n✅ Tüm design pattern testleri başarıyla çalıştırıldı.");
    }
}
