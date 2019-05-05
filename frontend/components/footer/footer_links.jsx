import React from 'react';
import { Link } from 'react-router-dom';

const FooterLinks = () => {
  return <section className="footer-links">
    <div>
      <label>about us</label>
      <ul>
        <li><Link to="/construction">our story</Link></li>
        {/* <li><Link to="/construction">better to give</Link></li> */}
        <li><a href="https://www.linkedin.com/in/valeryn/" target="_blank">our team</a></li>
        {/* <li><Link to="/construction">careers</Link></li> */}
      </ul>
    </div>
    
    <div>
      <label>support</label>
      <ul>
        <li><Link to="/orders">check order status</Link></li>
        <li><a href="https://ugoods.zendesk.com/forums/20813852-shipping-options-pricing" target="_blank">shipping &amp; returns</a></li>
        {/* <li><Link to="/construction">corporate orders</Link></li> */}
        {/* <li><Link to="/construction">email unsubscribe</Link></li> */}
        {/* <li><Link to="/construction">submit feedback</Link></li> */}
      </ul>
    </div>

    {/* <div>
      <label>makers &amp; products</label>
      <ul>
        <li><Link to="/construction">our catalog</Link></li>
        <li><Link to="/construction">independent makers</Link></li>
        <li><Link to="/construction">submit your product</Link></li>
        <li><Link to="/construction">scholarship opportunity</Link></li>
      </ul>
    </div> */}

    <div>
      <label>makers &amp; products</label>
      <ul>
        <li><a href="https://www.uncommongoods.com/blog/" target="_blank">our blog</a></li>
        <li><a href="https://www.uncommongoods.com/blog/category/maker-stories/" target="_blank">independent makers</a></li>
        {/* <li><Link to="/construction">submit your product</Link></li>
        <li><Link to="/construction">scholarship opportunity</Link></li> */}
      </ul>
    </div>
  </section>
};

export default FooterLinks;