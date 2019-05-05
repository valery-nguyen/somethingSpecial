import React from 'react';
import { Link } from 'react-router-dom';

const FooterDescription = () => {
  return <section className="footer-description">
    <p className="footer-description-details">Find the best ideas for men, women and kids at somethingSpecial. We carry thousands of unique and unusual gifts, from fun jewelry and cool accessories to creative home decor and kitchen items.</p>
    <ul>
      <li><Link className="hidden" to="/construction">site map</Link></li>
      <li><Link className="hidden" to="/construction">terms &amp; conditions</Link></li>
      <li><Link className="hidden" to="/construction">privacy policy</Link></li>
      <li><a className="hidden" href="https://nytm.org/made" target="_blank">made in NYC</a></li>
    </ul>
    <p>©2019 Valery's duplicate website of UncommonGoods.com</p>
  </section>
};

export default FooterDescription;