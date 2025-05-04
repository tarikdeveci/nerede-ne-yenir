import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import logo from '../assets/logo.svg';

export default function Navbar() {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <nav className="bg-white shadow-md">
      <div className="container mx-auto px-4 py-4 flex items-center justify-between">
        
        <div className="flex items-center space-x-3">
          <img
            src={logo}
            alt="NeredeNeYenir Logo"
            className="h-12 md:h-14 w-auto"
          />
          <span className="text-2xl font-bold text-orange-600">
            NeredeNeYenir
          </span>
        </div>

        
        <div className="hidden md:flex space-x-6 text-gray-700">
          <Link to="/" className="hover:text-gray-900">Ana Sayfa</Link>
          <Link to="/hakkimizda" className="hover:text-gray-900">Hakkımızda</Link>
          <Link to="/iletisim" className="hover:text-gray-900">İletişim</Link>
        </div>

        {/* Mobile Menu Button */}
        <div className="md:hidden">
          <button
            onClick={() => setIsOpen(!isOpen)}
            className="focus:outline-none"
            aria-label="Toggle menu"
          >
            {isOpen ? (
              <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" />
              </svg>
            ) : (
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
          <Link to="/" className="block text-gray-700 hover:text-gray-900">Ana Sayfa</Link>
          <Link to="/kategoriler" className="block text-gray-700 hover:text-gray-900">Kategoriler</Link>
          <Link to="/hakkimizda" className="block text-gray-700 hover:text-gray-900">Hakkımızda</Link>
          <Link to="/iletisim" className="block text-gray-700 hover:text-gray-900">İletişim</Link>
        </div>
      )}
    </nav>
  );
}
