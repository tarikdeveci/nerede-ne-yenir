import React from 'react';
import { Link } from 'react-router-dom';
import RatingStars from './RatingStars';

export default function RestaurantCard({ restaurant }) {
  const {
    restaurantId: id,
    restaurantName: name,
    averageRating: rating,
    priceRange,
    reviewCount: reviewsCount,
    categoryName: category,
    imageUrl // ✅ Bunu düzelt
  } = restaurant;
  return (
    <Link to={`/restaurants/${id}`} className="block hover:shadow-lg transition duration-300 rounded-lg overflow-hidden bg-white">
      <div className="h-40 bg-gray-200 flex items-center justify-center">
        {imageUrl ? (
         <img src={`/assets/restaurants/${imageUrl}`} alt={name} className="object-cover w-full h-full" />

        ) : (
          <span className="text-gray-400 text-sm">[ Görsel yok ]</span>
        )}
      </div>

      <div className="p-4">
        <h3 className="text-lg font-semibold text-gray-800">{name}</h3>
        <p className="text-sm text-gray-600">Kategori: {category}</p>
        <p className="text-sm text-gray-600">Fiyat Aralığı: {priceRange}</p>
        <div className="flex items-center gap-2">
          <RatingStars rating={rating} />
          <span className="text-sm text-gray-600">({reviewsCount} yorum)</span>
        </div>
      </div>
    </Link>
  );
}
