package com.example.nerede_ne_yenir_backend.observer;

import com.example.nerede_ne_yenir_backend.model.Restaurant;
import com.example.nerede_ne_yenir_backend.model.Review;

public interface ReviewObserver {
    void update(Restaurant restaurant, Review review);
}
