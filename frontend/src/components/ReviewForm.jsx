import React, { useState } from 'react';

export default function ReviewForm({ restaurantId, onSubmitSuccess }) {
  const [formData, setFormData] = useState({
    reviewerFirstName: '',
    reviewerLastName: '',
    rating: 5,
    comment: '',
  });

  const [loading, setLoading] = useState(false);
  const [success, setSuccess] = useState(false);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData(prev => ({
      ...prev,
      [name]: value,
    }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    setLoading(true);

    
    const payload = {
      ...formData,
      rating: Number(formData.rating),
      restaurantId: Number(restaurantId),
    };

    fetch('http://localhost:8080/api/reviews', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload),
    })
      .then(res => {
        if (!res.ok) throw new Error('Sunucu hatası');
        return res.json();
      })
      .then(() => {
        setSuccess(true);
        setFormData({
          reviewerFirstName: '',
          reviewerLastName: '',
          rating: 5,
          comment: '',
        });
        if (onSubmitSuccess) onSubmitSuccess();
        setTimeout(() => setSuccess(false), 3000);
      })
      .catch((err) => {
        console.error('Yorum gönderilemedi:', err);
        alert('Yorum gönderilirken bir hata oluştu.');
      })
      .finally(() => setLoading(false));
  };

  return (
    <form onSubmit={handleSubmit} className="space-y-4 mt-8">
      <div className="flex gap-4">
        <input
          type="text"
          name="reviewerFirstName"
          placeholder="Ad"
          value={formData.reviewerFirstName}
          onChange={handleChange}
          className="w-1/2 px-3 py-2 border rounded"
          required
        />
        <input
          type="text"
          name="reviewerLastName"
          placeholder="Soyad"
          value={formData.reviewerLastName}
          onChange={handleChange}
          className="w-1/2 px-3 py-2 border rounded"
          required
        />
      </div>

      <textarea
        name="comment"
        placeholder="Yorumunuz..."
        value={formData.comment}
        onChange={handleChange}
        className="w-full px-3 py-2 border rounded"
        rows="4"
        required
      />

      {/* ⭐ Puan seçimi (yıldız sayısıyla) */}
      <select
        name="rating"
        value={formData.rating}
        onChange={handleChange}
        className="w-full px-3 py-2 border rounded"
      >
        {[5, 4, 3, 2, 1].map((val) => (
          <option key={val} value={val}>
            {val} {'⭐'.repeat(val)}
          </option>
        ))}
      </select>

      <button
        type="submit"
        disabled={loading}
        className="bg-orange-600 text-white px-4 py-2 rounded hover:bg-orange-700"
      >
        {loading ? 'Gönderiliyor...' : 'Yorumu Gönder'}
      </button>

      {success && <p className="text-green-600 mt-2">Yorum başarıyla gönderildi!</p>}
    </form>
  );
}