import React from 'react';
import { withRouter } from 'react-router';

const CategoryNav = () => {
  return <nav className="category-nav">
    <ul className="hamburger-dropdown">
      <li>
        <ul className="category-nav-links">
          <li><a href="#">gifts</a></li>
          <li><a href="#">fun</a></li>
          <li><a href="#">home</a></li>
          <li><a href="#">kitchen &amp; bar</a></li >
          <li><a href="#">art</a></li >
          <li><a href="#">jewelry</a></li >
          <li><a href="#">women</a></li>
          <li><a href="#">men</a></li >
          <li><a href="#">kids</a></li >
          <li><a href="#">sale</a></li >
          <li><a href="#">this just in</a></li >
        </ul>
      </li>
    </ul>
  </nav>
};

export default withRouter(CategoryNav);