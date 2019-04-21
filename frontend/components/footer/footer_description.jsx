import React from 'react';
import { Link } from 'react-router-dom';

const FooterDescription = () => {
  return <section className="footer-description">
    <p className="footer-description-details">Find the best ideas for men, women and kids at UncommonGoods. We carry thousands of unique and unusual gifts, from fun jewelry and cool accessories to creative home decor and kitchen items.</p>
    <ul>
      <li><Link to="/construction">site map</Link></li>
      <li><Link to="/construction">terms &amp; conditions</Link></li>
      <li><Link to="/construction">privacy policy</Link></li>
      <li><a href="https://nytm.org/made">made in NYC</a></li>
    </ul>
    <p>©2019 Valery's duplicate website of UncommonGoods.com</p>
  </section>
};

export default FooterDescription;