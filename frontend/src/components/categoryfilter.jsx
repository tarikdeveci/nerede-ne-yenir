import React, { useState } from 'react';

export default function CategoryFilter({ categories = [], onApply, onClose }) {
  const [category, setCategory] = useState('');
  const [minRating, setMinRating] = useState('');
  const [minReviews, setMinReviews] = useState('');
  const [minPrice, setMinPrice] = useState('');
  const [maxPrice, setMaxPrice] = useState('');

  const handleApply = () => {
    onApply({
      category: category || null,
      minRating: minRating ? parseFloat(minRating) : null,
      minReviews: minReviews ? parseInt(minReviews) : null,
      minPrice: minPrice ? parseInt(minPrice) : null,
      maxPrice: maxPrice ? parseInt(maxPrice) : null,
    });
    onClose();
  };

  const handleReset = () => {
    setCategory('');
    setMinRating('');
    setMinReviews('');
    setMinPrice('');
    setMaxPrice('');
    onApply(null); 
    onClose();
  };

  return (
    <div className="fixed inset-0 bg-black bg-opacity-40 flex items-center justify-center z-50">

      <div className="bg-white p-6 rounded-lg shadow-lg w-full max-w-md border border-gray-300">
        <h2 className="text-xl font-semibold mb-4">Filtrele</h2>

        <div className="mb-3">
          <label className="block text-sm font-medium mb-1">Kategori</label>
          <select
            className="w-full border border-gray-300 p-2 rounded"
            value={category}
            onChange={(e) => setCategory(e.target.value)}
          >
            <option value="">Hepsi</option>
            {categories.map((cat) => (
              <option key={cat} value={cat}>{cat}</option>
            ))}
          </select>
        </div>

        <div className="grid grid-cols-2 gap-3 mb-3">
          <div>
            <label className="block text-sm font-medium mb-1">Min Puan</label>
            <input
              type="number"
              step="0.1"
              min="0"
              max="5"
              className="w-full border border-gray-300 p-2 rounded"
              value={minRating}
              onChange={(e) => setMinRating(e.target.value)}
            />
          </div>
          <div>
            <label className="block text-sm font-medium mb-1">Min Yorum</label>
            <input
              type="number"
              className="w-full border border-gray-300 p-2 rounded"
              value={minReviews}
              onChange={(e) => setMinReviews(e.target.value)}
            />
          </div>
        </div>

        <div className="grid grid-cols-2 gap-3 mb-4">
          <div>
            <label className="block text-sm font-medium mb-1">Min Fiyat</label>
            <input
              type="number"
              className="w-full border border-gray-300 p-2 rounded"
              value={minPrice}
              onChange={(e) => setMinPrice(e.target.value)}
            />
          </div>
          <div>
            <label className="block text-sm font-medium mb-1">Max Fiyat</label>
            <input
              type="number"
              className="w-full border border-gray-300 p-2 rounded"
              value={maxPrice}
              onChange={(e) => setMaxPrice(e.target.value)}
            />
          </div>
        </div>

        <div className="flex justify-between items-center gap-2">
          <button
            onClick={handleReset}
            className="px-4 py-2 rounded bg-gray-100 hover:bg-gray-200 text-gray-700 text-sm"
          >
            Filtreyi Temizle
          </button>

          <div className="flex gap-2">
            <button
              onClick={onClose}
              className="px-4 py-2 rounded bg-gray-200 hover:bg-gray-300"
            >
              Vazgeç
            </button>
            <button
              onClick={handleApply}
              className="px-4 py-2 rounded bg-orange-600 text-white hover:bg-orange-700"
            >
              Uygula
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
