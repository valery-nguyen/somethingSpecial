import React from 'react';
import { Link } from 'react-router-dom';

export const FirstBackgroundBanner = () => {
  return <Link to="/category/women">
    <div className="header-background-outer">
      <img className="header-background" src={window.firstBackgroundImgURL} />
    </div>
    
  </Link>
};

export const SecondBackgroundBanner = () => {
  return <Link to="/category/new">
    <div className="header-background-outer">
      <img className="header-background" src={window.secondBackgroundImgURL} />
    </div>

  </Link>
};