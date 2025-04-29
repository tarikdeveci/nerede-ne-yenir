import React from 'react';

export default function CategoryFilter({
  categories = [],
  selectedCategory,
  onSelect,
}) {
  return (
    <div className="flex flex-wrap gap-2 mb-6">
      {categories.map((cat) => {
        const isActive = selectedCategory === cat;
        return (
          <button
            key={cat}
            onClick={() => onSelect(cat)}
            className={
              `px-4 py-2 rounded-full transition-colors focus:outline-none ` +
              (isActive
                ? 'bg-orange-600 text-white'
                : 'bg-gray-200 text-gray-700 hover:bg-gray-300')
            }
          >
            {cat}
          </button>
        );
      })}
    </div>
  );
}
