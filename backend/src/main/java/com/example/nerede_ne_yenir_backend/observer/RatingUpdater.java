package com.example.nerede_ne_yenir_backend.observer;

import com.example.nerede_ne_yenir_backend.model.Restaurant;
import com.example.nerede_ne_yenir_backend.model.Review;

public class RatingUpdater implements ReviewObserver {

    @Override
    public void update(Restaurant restaurant, Review review) {
        Integer reviewCount = restaurant.getReviewCount();
        int count = reviewCount != null ? reviewCount : 0;
        
        Double averageRating = restaurant.getAverageRating();
        double avg = averageRating != null ? averageRating : 0.0;

        int newCount = count + 1;
        double newAvg = (avg * count + review.getRating()) / newCount;

        restaurant.setReviewCount(newCount);
        restaurant.setAverageRating(newAvg);

        System.out.println("[Logger] Yeni yorum geldi: " + review.getComment());
    }
}
