import React, { useState } from 'react';

export default function SearchBar({ onSearch }) {
  const [query, setQuery] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    if (onSearch) onSearch(query.trim());
  };

  return (
    <form onSubmit={handleSubmit} className="flex items-center mb-6">
      <input
        type="text"
        value={query}
        onChange={(e) => setQuery(e.target.value)}
        placeholder="Restoran ara..."
        className="flex-grow px-4 py-2 border border-gray-300 rounded-l-md focus:outline-none focus:ring-2 focus:ring-orange-500"
      />
      <button
        type="submit"
        className="px-4 py-2 bg-orange-600 text-white rounded-r-md hover:bg-orange-700 focus:outline-none focus:ring-2 focus:ring-orange-500"
      >
        Ara
      </button>
    </form>
  );
}
