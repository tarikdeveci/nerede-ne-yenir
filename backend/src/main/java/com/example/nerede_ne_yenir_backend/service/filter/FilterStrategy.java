package com.example.nerede_ne_yenir_backend.service.filter;

import com.example.nerede_ne_yenir_backend.model.Restaurant;

public interface FilterStrategy {
    boolean matches(Restaurant restaurant);
}
