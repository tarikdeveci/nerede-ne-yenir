import React from 'react';

// Tek bir restoran kartını gösterir
function RestaurantCard({ restaurant }) {
  const { name, rating, priceRange, reviewsCount } = restaurant;

  return (
    <div className="bg-white rounded-lg shadow p-4">
      <h3 className="text-xl font-semibold mb-2">{name}</h3>
      <p className="text-gray-600 mb-1">Rating: {rating} ⭐</p>
      <p className="text-gray-600 mb-1">Fiyat aralığı: {priceRange}</p>
      <p className="text-gray-600">Yorum sayısı: {reviewsCount}</p>
    </div>
  );
}

// Restoran listesini ızgara şeklinde sunar
export default function RestaurantList({ restaurants = [] }) {
  if (!restaurants.length) {
    return <p className="text-gray-700">Hiç restoran bulunamadı.</p>;
  }

  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
      {restaurants.map((rest) => (
        <RestaurantCard key={rest.id} restaurant={rest} />
      ))}
    </div>
  );
}
