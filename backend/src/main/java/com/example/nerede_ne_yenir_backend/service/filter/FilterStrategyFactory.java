package com.example.nerede_ne_yenir_backend.service.filter;

public class FilterStrategyFactory {

    public static FilterStrategy getStrategy(String type, Object... params) {
        return switch (type.toLowerCase()) {
            case "price" -> new PriceFilterStrategy((int) params[0], (int) params[1]);
            default -> null;
        };
    }
}
