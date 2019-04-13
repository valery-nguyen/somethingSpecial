import React from 'react';

const FooterNav = () => {
  return <nav className="footer-nav">
      <div>
        <a href="#"><i className="icon-help"></i> help center</a>
        <a href="#"><i className="icon-chat"></i> live chat</a>
        <a href="#"><i className="icon-email"></i> email us</a>
        <a href="#"><i className="icon-phone"></i> 408.886.8447</a>
      </div>     
      <div>
        <span>
          <a href="#"><i className="icon-facebook"></i></a>
          <a href="#"><i className="icon-twitter"></i></a>
          <a href="#"><i className="icon-pinterest"></i></a>
          <a href="#"><i className="icon-instagram"></i></a>
        </span>
      </div>
  </nav>
};

export default FooterNav;