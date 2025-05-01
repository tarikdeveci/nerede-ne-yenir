import React from 'react';
import { FaStar, FaStarHalfAlt, FaRegStar } from 'react-icons/fa';

/**
 * RatingStars component
 * @param {{ rating: number }} props
 * Renders full, half, and empty stars based on the rating value.
 */
export default function RatingStars({ rating }) {
  const fullStars = Math.floor(rating);
  const hasHalfStar = rating - fullStars >= 0.5;
  const emptyStars = 5 - fullStars - (hasHalfStar ? 1 : 0);

  const stars = [];
  // Full stars
  for (let i = 0; i < fullStars; i++) {
    stars.push(<FaStar key={`full-${i}`} />);
  }
  // Half star
  if (hasHalfStar) {
    stars.push(<FaStarHalfAlt key="half" />);
  }
  // Empty stars
  for (let i = 0; i < emptyStars; i++) {
    stars.push(<FaRegStar key={`empty-${i}`} />);
  }

  return (
    <div className="flex items-center space-x-0.5 text-yellow-500">
      {stars}
    </div>
  );
}