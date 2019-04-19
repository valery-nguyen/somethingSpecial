import React from 'react';
import { Link } from 'react-router-dom';

const BackgroundBanner = () => {
  return <Link to="/category/women">
    <div className="header-background-outer">
      <img className="header-background" src={window.backgroundImgURL} />
    </div>
    
  </Link>
};

export default BackgroundBanner;