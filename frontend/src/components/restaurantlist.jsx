import React from 'react';
import RestaurantCard from './restaurantcard';

export default function RestaurantList({ restaurants = [] }) {
  if (!restaurants.length) {
    return <p className="text-gray-700">Hiç restoran bulunamadı.</p>;
  }

  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
      {restaurants.map((rest) => (
        <RestaurantCard key={rest.restaurantId} restaurant={rest} />
      ))}
    </div>
  );
}
