import { useParams } from 'react-router-dom';
import { useEffect, useState } from 'react';

export default function RestaurantDetail() {
  const { id } = useParams(); // URL'den restoran ID'sini al
  const [restaurant, setRestaurant] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetch('http://localhost:8080/api/restaurants')
      .then((res) => res.json())
      .then((data) => {
        const match = data.find(r => String(r.restaurantId) === id);
        setRestaurant(match);
        setLoading(false);
      })
      .catch((err) => {
        console.error('Veri alınamadı:', err);
        setLoading(false);
      });
  }, [id]);

  if (loading) return <p className="p-6">Yükleniyor...</p>;
  if (!restaurant) return <p className="p-6 text-red-600">Restoran bulunamadı.</p>;

  return (
    <div className="max-w-3xl mx-auto p-6 bg-white rounded shadow">
      <h1 className="text-3xl font-bold mb-4">{restaurant.restaurantName}</h1>
      <p className="text-gray-700 mb-2">Kategori: {restaurant.categoryName}</p>
      <p className="text-gray-700 mb-2">Fiyat Aralığı: {restaurant.priceRange}</p>
      <p className="text-gray-700 mb-4">Puan: ⭐ {restaurant.averageRating} ({restaurant.reviewCount} yorum)</p>

      {/* Görsel varsa göster */}
      {restaurant.imageUrl && (
        <img src={restaurant.imageUrl} alt={restaurant.restaurantName} className="w-full h-64 object-cover rounded mb-4" />
      )}

      <hr className="my-6" />

      {/* Buraya yorum listesi ve form eklenecek */}
      <p className="text-gray-600">Yorumlar burada görünecek 👇</p>
    </div>
  );
}
