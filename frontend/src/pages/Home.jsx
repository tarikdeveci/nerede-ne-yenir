import React, { useState, useEffect, useMemo } from 'react';
import SearchBar from '../components/searchbar';
import CategoryFilter from '../components/categoryfilter';
import RestaurantList from '../components/restaurantlist';

export default function Home() {
  const [query, setQuery] = useState('');
  const [selectedCategory, setSelectedCategory] = useState('');
  const [restaurants, setRestaurants] = useState([]);
  const [loading, setLoading] = useState(true);

  // Veriyi API'den çek
  useEffect(() => {
    fetch('http://localhost:8080/api/restaurants')
      .then((res) => res.json())
      .then((data) => {
        setRestaurants(data);
        setLoading(false);
      })
      .catch((err) => {
        console.error('Restoran verisi alınamadı:', err);
        setLoading(false);
      });
  }, []);

  // Kategori listesini dinamik oluştur
  const categories = useMemo(() => {
    const all = restaurants.map((r) => r.categoryName);
    return [...new Set(all)];
  }, [restaurants]);

  // Sorgu ve kategoriye göre filtreleme
  const filteredRestaurants = useMemo(() => {
    return restaurants.filter((r) => {
      const matchesQuery = query
        ? r.restaurantName.toLowerCase().includes(query.toLowerCase())
        : true;
      const matchesCategory = selectedCategory
        ? r.categoryName === selectedCategory
        : true;
      return matchesQuery && matchesCategory;
    });
  }, [query, selectedCategory, restaurants]);

  if (loading) return <p className="p-6">Yükleniyor...</p>;

  return (
    <div>
      {/* Arama Çubuğu */}
      <SearchBar onSearch={setQuery} />

      {/* Kategori Filtresi */}
      <CategoryFilter
        categories={categories}
        selectedCategory={selectedCategory}
        onSelect={(cat) => setSelectedCategory(cat === selectedCategory ? '' : cat)}
      />

      {/* Aranan ve seçili kategori */}
      {query && <p className="mb-2 text-gray-700">Aranan: "{query}"</p>}
      {selectedCategory && <p className="mb-4 text-gray-700">Kategori: {selectedCategory}</p>}

      {/* Restoran Listesi */}
      <RestaurantList restaurants={filteredRestaurants} />
    </div>
  );
}
