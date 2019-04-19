import React from 'react';
import { Link } from 'react-router-dom';

export const FirstLink = () => {
  return <div className="for-her-link">
    <div>
      <label>For Your Stellar Humans</label>
    </div>
    <Link to="/category/women">
      <button>shop for her</button>
    </Link>
  </div>
};