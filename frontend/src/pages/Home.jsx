import React, { useState, useMemo } from 'react';
import SearchBar from '../components/searchbar';
import CategoryFilter from '../components/categoryfilter';
import RestaurantList from '../components/restaurantlist';

const mockCategories = [
  'Döner',
  'Hamburger',
  'Pizza',
  'Tatlı',
  'Ev Yemekleri',
];

// Örnek restoran verisi
const mockRestaurants = [
  { id: 1, name: 'Beşiktaş Dönercisi', rating: 4.5, priceRange: '₺₺', reviewsCount: 120, category: 'Döner' },
  { id: 2, name: 'Burger House', rating: 4.2, priceRange: '₺₺₺', reviewsCount: 85, category: 'Hamburger' },
  { id: 3, name: 'PizzaRoma', rating: 4.8, priceRange: '₺₺₺', reviewsCount: 200, category: 'Pizza' },
  { id: 4, name: 'Tatlı Diyarı', rating: 4.3, priceRange: '₺', reviewsCount: 150, category: 'Tatlı' },
  { id: 5, name: 'Ev Lezzetleri Lokantası', rating: 4.1, priceRange: '₺₺', reviewsCount: 60, category: 'Ev Yemekleri' },
];

export default function Home() {
  const [query, setQuery] = useState('');
  const [selectedCategory, setSelectedCategory] = useState('');

  // Sorgu ve kategoriye göre filtrelenmiş liste
  const filteredRestaurants = useMemo(() => {
    return mockRestaurants.filter((r) => {
      const matchesQuery = query
        ? r.name.toLowerCase().includes(query.toLowerCase())
        : true;
      const matchesCategory = selectedCategory
        ? r.category === selectedCategory
        : true;
      return matchesQuery && matchesCategory;
    });
  }, [query, selectedCategory]);

  return (
    <div>
      {/* Arama Çubuğu */}
      <SearchBar onSearch={setQuery} />

      {/* Kategori Filtresi */}
      <CategoryFilter
        categories={mockCategories}
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
