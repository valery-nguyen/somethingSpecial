import React from 'react';

const FooterLinks = () => {
  return <section className="footer-links">
    <div>
      <label>about us</label>
      <ul>
        <li><a href="#">our story</a></li>
        <li><a href="#">better to give</a></li>
        <li><a href="#">our team</a></li>
        <li><a href="#">careers</a></li>
      </ul>
    </div>
    
    <div>
      <label>support</label>
      <ul>
        <li><a href="#">check order status</a></li>
        <li><a href="#">shipping &amp; returns</a></li>
        <li><a href="#">corporate orders</a></li>
        <li><a href="#">email unsubscribe</a></li>
        <li><a href="#">submit feedback</a></li>
      </ul>
    </div>

    <div>
      <label>makers &amp; products</label>
      <ul>
        <li><a href="#">our catalog</a></li>
        <li><a href="#">independent makers</a></li>
        <li><a href="#">submit your product</a></li>
        <li><a href="#">scholarship opportunity</a></li>
      </ul>
    </div>
  </section>
};

export default FooterLinks;