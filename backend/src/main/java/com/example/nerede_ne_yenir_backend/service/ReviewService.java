package com.example.nerede_ne_yenir_backend.service;

import com.example.nerede_ne_yenir_backend.dto.ReviewDTO;
import java.util.List;

public interface ReviewService {
    List<ReviewDTO> getReviewsByRestaurant(Long restaurantId);
}
