package com.example.nerede_ne_yenir_backend.observer;

import com.example.nerede_ne_yenir_backend.model.Restaurant;
import com.example.nerede_ne_yenir_backend.model.Review;

public class RatingUpdater implements ReviewObserver {

    @Override
    public void update(Review review) {
        Restaurant r = review.getRestaurant();
        if (r != null) {
            int count = r.getReviewCount() + 1;
            double newAvg = ((r.getAverageRating() * r.getReviewCount()) + review.getRating()) / count;
            r.setReviewCount(count);
            r.setAverageRating(newAvg);
            System.out.println("[RatingUpdater] Yeni ortalama: " + newAvg);
        }
    }
}
