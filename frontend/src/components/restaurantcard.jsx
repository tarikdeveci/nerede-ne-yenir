import React from 'react';
import { Link } from 'react-router-dom';

export default function RestaurantCard({ restaurant }) {
  const {
    id,
    name,
    rating,
    priceRange,
    reviewsCount,
    category,
    imageUrl // ileride backend'den gelir ya da static atanır
  } = restaurant;

  return (
    <Link to={`/restaurants/${id}`} className="block hover:shadow-lg transition duration-300 rounded-lg overflow-hidden bg-white">
      <div className="h-40 bg-gray-200 flex items-center justify-center">
        {/* Görsel desteği gelince buraya yerleştirilecek */}
        {imageUrl ? (
          <img src={imageUrl} alt={name} className="object-cover w-full h-full" />
        ) : (
          <span className="text-gray-400 text-sm">[ Görsel yok ]</span>
        )}
      </div>

      <div className="p-4">
        <h3 className="text-lg font-semibold text-gray-800">{name}</h3>
        <p className="text-sm text-gray-600">Kategori: {category}</p>
        <p className="text-sm text-gray-600">Fiyat Aralığı: {priceRange}</p>
        <p className="text-sm text-gray-600">Puan: ⭐ {rating} ({reviewsCount} yorum)</p>
      </div>
    </Link>
  );
}
