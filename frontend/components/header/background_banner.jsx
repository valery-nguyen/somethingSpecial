import React from 'react';
import { Link } from 'react-router-dom';

const BackgroundBanner = () => {
  return <Link to="/product/personalized-all-heart-bangle-set">
    <div className="header-background-outer">
      <img className="header-background" src={window.backgroundImgURL} />
    </div>
    
  </Link>
};

export default BackgroundBanner;