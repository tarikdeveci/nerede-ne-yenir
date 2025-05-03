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
    imageUrl, // API'dan gelen imageUrl
  } = restaurant;

  // Eğer imageUrl bir HTTP URL’i değilse, statik klasör yolunu öne ekle
  const imgSrc = imageUrl
    ? imageUrl.startsWith('http')
      ? imageUrl
      : `/assets/restaurants/${imageUrl}`
    : null;

  return (
    <Link
      to={`/restaurants/${id}`}
      className="block hover:shadow-lg transition duration-300 rounded-lg overflow-hidden bg-white"
    >
      <div className="h-40 bg-gray-200 flex items-center justify-center">
        {imgSrc ? (
          <img src={imgSrc} alt={name} className="object-cover w-full h-full" />
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
