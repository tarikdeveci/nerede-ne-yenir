import React, { useState, useEffect, useMemo } from 'react';
import SearchBar from '../components/searchbar';
import CategoryFilter from '../components/categoryfilter';
import RestaurantList from '../components/restaurantlist';

export default function Home() {
  const [restaurants, setRestaurants] = useState([]);
  const [loading, setLoading] = useState(true);

  const [query, setQuery] = useState('');
  const [filters, setFilters] = useState(null);
  const [showFilter, setShowFilter] = useState(false);

  useEffect(() => {
    const fetchRestaurants = async () => {
      try {
        let url = 'http://localhost:8080/api/restaurants';

        if (filters) {
          const queryParams = new URLSearchParams();
          if (filters.category) queryParams.append('category', filters.category);
          if (filters.minRating) queryParams.append('minRating', filters.minRating);
          if (filters.minReviews) queryParams.append('minReviews', filters.minReviews);
          if (filters.minPrice) queryParams.append('minPrice', filters.minPrice);
          if (filters.maxPrice) queryParams.append('maxPrice', filters.maxPrice);
          url += `/filter?${queryParams.toString()}`;
        }

        const res = await fetch(url);
        const data = await res.json();
        const sanitized = data.map((r) => ({
          ...r,
          imageUrl: r.imageUrl || null,
        }));
        setRestaurants(sanitized);
      } catch (err) {
        console.error('Restoran verisi alınamadı:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchRestaurants();
  }, [filters]);

  const categories = useMemo(() => {
    const all = restaurants.map((r) => r.categoryName);
    return [...new Set(all)];
  }, [restaurants]);

  const filteredRestaurants = useMemo(() => {
    return restaurants.filter((r) => {
      const matchesQuery = query
        ? r.restaurantName.toLowerCase().includes(query.toLowerCase())
        : true;
      return matchesQuery;
    });
  }, [query, restaurants]);

  if (loading) return <p className="p-6">Yükleniyor...</p>;

  return (
    <div className="px-4">
      <div className="flex items-center justify-between mb-6">
        <div className="w-[70%]">
          <SearchBar onSearch={setQuery} />
        </div>
        <button
          className="ml-4 px-4 py-2 bg-orange-600 text-white rounded hover:bg-orange-700"
          onClick={() => setShowFilter(true)}
        >
          Filtrele
        </button>
      </div>

      {query && <p className="mb-2 text-gray-700">Aranan: "{query}"</p>}
      {filters?.category && <p className="mb-4 text-gray-700">Kategori: {filters.category}</p>}

      <RestaurantList restaurants={filteredRestaurants} />

      {showFilter && (
        <CategoryFilter
          categories={categories}
          onApply={(f) => setFilters(f)}
          onClose={() => setShowFilter(false)}
        />
      )}
    </div>
  );
}
