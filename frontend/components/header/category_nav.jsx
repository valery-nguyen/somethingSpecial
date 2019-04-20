import React from 'react';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';

const CategoryNav = () => {
  return <nav className="category-nav">
    <ul id="hamburger-dropdown-btn"className="hamburger-dropdown">
      <li>
        <ul className="category-nav-links">
          <li><Link to="/category/gifts">gifts</Link></li>
          <li><Link to="/category/fun">fun</Link></li>
          <li><Link to="/category/home">home</Link></li>
          <li><Link to="/category/kitchen">kitchen &amp; bar</Link></li >
          <li><Link to="/category/art">art</Link></li >
          <li><Link to="/category/jewelry">jewelry</Link></li >
          <li><Link to="/category/women">women</Link></li>
          <li><Link to="/category/men">men</Link></li >
          <li><Link to="/category/kids">kids</Link></li >
          <li><Link to="/category/sale">sale</Link></li >
          <li><Link to="/category/new">this just in</Link></li >
        </ul>
      </li>
    </ul>
  </nav>
};

export default withRouter(CategoryNav);