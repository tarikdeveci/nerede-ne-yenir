import React from 'react';
import Navbar from './components/navbar';

export default function App() {
  return (
    <div className="min-h-screen bg-gray-100">
      {/* Navbar’ımız */}
      <Navbar />

      {/* Ana içerik alanı */}
      <main className="container mx-auto px-4 py-6">
        <h1 className="text-3xl font-semibold text-gray-800 mb-4">
          Hoşgeldiniz!
        </h1>
        {/* Buraya SearchBar, CategoryFilter, RestaurantList vb. bileşenler gelecek */}
      </main>
    </div>
  );
}
