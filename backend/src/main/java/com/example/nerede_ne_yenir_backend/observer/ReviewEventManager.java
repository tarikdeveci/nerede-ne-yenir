package com.example.nerede_ne_yenir_backend.observer;

import java.util.ArrayList;
import java.util.List;

import com.example.nerede_ne_yenir_backend.model.Restaurant;
import com.example.nerede_ne_yenir_backend.model.Review;

public class ReviewEventManager {

    private final List<ReviewObserver> observers = new ArrayList<>();

    public void subscribe(ReviewObserver observer) {
        observers.add(observer);
    }

    public void notifyAll(Restaurant restaurant, Review review) {
        for (ReviewObserver observer : observers) {
            observer.update(restaurant, review);
        }
    }
}
