import React from 'react';
import { Link } from 'react-router-dom';

export const WellnessLink = () => {
  return <div className="wellness-link">
    <Link to="#">
      <label>More Om for Your Home</label>
    </Link>
    <a href="#">
      <button>shop wellness</button>
    </a>
  </div>
};