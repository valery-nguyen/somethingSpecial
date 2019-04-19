import React from 'react';
import { Link } from 'react-router-dom';

const LinksNav = () => {
  return <nav className="links-nav">
    <hr/>
    <div className="links-nav-shop">
      <label><p>Shop For</p></label>
      <div>
        <Link to="/category/women"><p>her</p></Link>
        <Link to="/category/men"><p>him</p></Link>
        <Link to="/category/kids"><p>kids</p></Link>
        <Link to="/category/teen"><p>teens</p></Link>
      </div>

    </div>
    <div className="links-nav-categories">
      <label>Top Categories</label>
      <Link to="/category/home">home</Link>
      <Link to="/category/kitchen">kitchen</Link>
      <Link to="/category/art">art</Link>
      <Link to="/category/jewelry">jewelry</Link>
      <Link to="/category/new">this just in</Link>
      <Link to="/category/sale">sale</Link>
    </div>
    <hr/>
  </nav>
};

export default LinksNav;