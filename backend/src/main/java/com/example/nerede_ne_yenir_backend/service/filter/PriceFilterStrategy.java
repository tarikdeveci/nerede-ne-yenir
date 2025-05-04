package com.example.nerede_ne_yenir_backend.service.filter;

import com.example.nerede_ne_yenir_backend.model.Restaurant;

public class PriceFilterStrategy implements FilterStrategy {

    private final int min;
    private final int max;

    public PriceFilterStrategy(int min, int max) {
        this.min = min;
        this.max = max;
    }

    @Override
    public boolean matches(Restaurant restaurant) {
        try {
            String[] range = restaurant.getPriceRange().split("-");
            int lower = Integer.parseInt(range[0].trim());
            int upper = Integer.parseInt(range[1].trim());
            return lower >= min && upper <= max;
        } catch (NullPointerException | ArrayIndexOutOfBoundsException | NumberFormatException e) {
            return false;
        }
    }
}
