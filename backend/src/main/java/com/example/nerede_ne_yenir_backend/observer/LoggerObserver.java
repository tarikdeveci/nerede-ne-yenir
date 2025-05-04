package com.example.nerede_ne_yenir_backend.observer;

import com.example.nerede_ne_yenir_backend.model.Restaurant;
import com.example.nerede_ne_yenir_backend.model.Review;

public class LoggerObserver implements ReviewObserver {

    @Override
    public void update(Restaurant restaurant, Review review) {
        System.out.println("[Logger] Yeni yorum geldi: " + review.getComment());
    }
}
