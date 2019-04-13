import React from 'react';

const LinksNav = () => {
  return <nav className="links-nav">
    <hr/>
    <div className="links-nav-shop">
      <label><p>Shop For</p></label>
      <div>
        <a href="#"><p>her</p></a>
        <a href="#"><p>him</p></a>
        <a href="#"><p>kids</p></a>
        <a href="#"><p>teens</p></a>
      </div>

    </div>
    <div className="links-nav-categories">
      <label>Top Categories</label>
      <a href="#">exclusive</a>
      <a href="#">handmade</a>      
      <a href="#">art</a>
      <a href="#">jewelry</a>
      <a href="#">this just in</a>
      <a href="#">sale</a>
    </div>
    <hr/>
  </nav>
};

export default LinksNav;