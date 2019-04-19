import React from 'react';
import { Link } from 'react-router-dom';

export const WellnessLink = () => {
  return <div className="for-her-link">
    <Link to="#">
      <label>For Your Stellar Humans</label>
    </Link>
    <a href="#">
      <button>shop for her</button>
    </a>
  </div>
};