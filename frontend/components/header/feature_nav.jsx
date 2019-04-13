import React from 'react';
import { withRouter } from 'react-router';

const FeatureNav = () => {
  return <nav className="feature-nav">
    <section>
      <div>
        <a href="#" className="link-blog">Our Blog: <i>The Goods</i></a>
        <a href="#"><i className="icon-gift"></i> Gift Finder</a>
      </div>

      <div>
        <a href="#"><i className="icon-user"></i> Sign In</a>
        <a href="#"><i className="icon-heart"></i> Wish Lists</a>
        <a href="#"><i className="icon-flag"></i> Ship To</a>
      </div >
    </section>
  </nav>
};

export default withRouter(FeatureNav);