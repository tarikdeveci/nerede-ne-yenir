import React, { useState } from 'react';

export default function Navbar() {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <nav className="bg-white shadow-md">
      <div className="container mx-auto px-4 py-3 flex items-center justify-between">
        {/* Logo / Brand */}
        <div className="text-2xl font-bold text-orange-600">
          NeredeNeYenir
        </div>

        {/* Desktop Links */}
        <div className="hidden md:flex space-x-6 text-gray-700">
          <a href="#" className="hover:text-gray-900">Ana Sayfa</a>
          <a href="#" className="hover:text-gray-900">Kategoriler</a>
          <a href="#" className="hover:text-gray-900">Hakkımızda</a>
          <a href="#" className="hover:text-gray-900">İletişim</a>
        </div>

        {/* Mobile Menu Button */}
        <div className="md:hidden">
          <button
            onClick={() => setIsOpen(!isOpen)}
            className="focus:outline-none"
            aria-label="Toggle menu"
          >
            {isOpen ? (
              // X icon
              <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" />
              </svg>
            ) : (
              // Hamburger icon
              <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 6h16M4 12h16M4 18h16" />
              </svg>
            )}
          </button>
        </div>
      </div>

      {/* Mobile Menu Links */}
      {isOpen && (
        <div className="md:hidden bg-white px-4 pb-4 space-y-2">
          <a href="#" className="block text-gray-700 hover:text-gray-900">Ana Sayfa</a>
          <a href="#" className="block text-gray-700 hover:text-gray-900">Kategoriler</a>
          <a href="#" className="block text-gray-700 hover:text-gray-900">Hakkımızda</a>
          <a href="#" className="block text-gray-700 hover:text-gray-900">İletişim</a>
        </div>
      )}
    </nav>
  );
}
