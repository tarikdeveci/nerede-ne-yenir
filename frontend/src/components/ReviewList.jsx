import React, { useEffect, useState } from 'react';
import RatingStars from './RatingStars'; // ⭐ Bileşeni ekledik

export default function ReviewList({ restaurantId, refreshKey }) {
  const [reviews, setReviews] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (!restaurantId) return;

    setLoading(true);
    fetch(`http://localhost:8080/api/reviews/restaurant/${restaurantId}`)
      .then((res) => res.json())
      .then((data) => {
        setReviews(data);
        setLoading(false);
      })
      .catch((err) => {
        console.error('Yorumlar alınamadı:', err);
        setLoading(false);
      });
  }, [restaurantId, refreshKey]);

  if (loading) return <p className="text-gray-600">Yorumlar yükleniyor...</p>;

  if (!reviews.length) return <p className="text-gray-500 italic">Bu restorana henüz yorum yapılmamış.</p>;

  return (
    <div className="space-y-4">
      {reviews.map((review) => (
        <div key={review.reviewId} className="bg-gray-100 p-4 rounded shadow-sm">
          <p className="font-semibold">{review.reviewerFirstName} {review.reviewerLastName}</p>
          <div className="flex items-center gap-2 text-sm text-yellow-600 mb-1">
            <RatingStars rating={review.rating} />
            <span className="text-gray-600">{review.rating.toFixed(1)}</span>
          </div>
          <p className="mt-1">{review.comment}</p>
        </div>
      ))}
    </div>
  );
}
