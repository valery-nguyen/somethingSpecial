import React from 'react';
import { Link } from 'react-router-dom';

const FooterNav = () => {
  return <nav className="footer-nav">
      <div>
        <a href="https://support.uncommongoods.com/hc/en-us" target="_blank"><i className="icon-help"></i> help center</a>
        <Link className="hidden" to="/construction"><i className="icon-chat"></i> live chat</Link>
        <a href="mailto:valery.nguyen@ucla.edu"><i className="icon-email"></i> email us</a>
        <a href="tel:4088868447"><i className="icon-phone"></i> 408.886.8447</a>
      </div>     
      <div>
        <span>
        <a href="https://www.facebook.com/pages/UncommonGoods/44340057816" target="_blank"><i className="icon-facebook"></i></a>
        <a href="https://www.twitter.com/uncommongoods" target="_blank"><i className="icon-twitter"></i></a>
        <a href="https://pinterest.com/uncommongoods" target="_blank"><i className="icon-pinterest"></i></a>
        <a href="https://instagram.com/uncommongoods" target="_blank"><i className="icon-instagram"></i></a>
        </span>
      </div>
  </nav>
};

export default FooterNav;