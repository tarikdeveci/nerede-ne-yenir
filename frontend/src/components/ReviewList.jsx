import React, { useEffect, useState } from 'react';

export default function ReviewList({ restaurantId }) {
  const [reviews, setReviews] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (!restaurantId) return;

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
  }, [restaurantId]);

  if (loading) return <p className="text-gray-600">Yorumlar yükleniyor...</p>;

  if (!reviews.length) return <p className="text-gray-500 italic">Bu restorana henüz yorum yapılmamış.</p>;

  return (
    <div className="space-y-4">
      {reviews.map((review) => (
        <div key={review.reviewId} className="bg-gray-100 p-4 rounded shadow-sm">
          <p className="font-semibold">{review.reviewerFirstName} {review.reviewerLastName}</p>
          <p className="text-sm text-gray-600">Puan: ⭐ {review.rating}</p>
          <p className="mt-1">{review.comment}</p>
        </div>
      ))}
    </div>
  );
}
