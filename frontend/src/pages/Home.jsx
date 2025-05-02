import React, { useState, useEffect, useMemo } from 'react';
import SearchBar from '../components/searchbar';
import CategoryFilter from '../components/categoryfilter';
import RestaurantList from '../components/restaurantlist';

export default function Home() {
  const [query, setQuery] = useState('');
  const [selectedCategory, setSelectedCategory] = useState('');
  const [restaurants, setRestaurants] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetch('http://localhost:8080/api/restaurants')
      .then((res) => res.json())
      .then((data) => {
        // Her restoranda imageUrl varsa kalsın, yoksa null yap
        const sanitizedData = data.map((r) => ({
          ...r,
          imageUrl: r.imageUrl || null
        }));
        setRestaurants(sanitizedData);
        setLoading(false);
      })
      .catch((err) => {
        console.error('Restoran verisi alınamadı:', err);
        setLoading(false);
      });
  }, []);

  const categories = useMemo(() => {
    const all = restaurants.map((r) => r.categoryName);
    return [...new Set(all)];
  }, [restaurants]);

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
      <SearchBar onSearch={setQuery} />
      <CategoryFilter
        categories={categories}
        selectedCategory={selectedCategory}
        onSelect={(cat) => setSelectedCategory(cat === selectedCategory ? '' : cat)}
      />
      {query && <p className="mb-2 text-gray-700">Aranan: "{query}"</p>}
      {selectedCategory && <p className="mb-4 text-gray-700">Kategori: {selectedCategory}</p>}
      <RestaurantList restaurants={filteredRestaurants} />
    </div>
  );
}
