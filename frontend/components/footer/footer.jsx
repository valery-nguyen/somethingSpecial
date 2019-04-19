import React from 'react';

import FooterNav from './footer_nav';
import FooterLinks from './footer_links';
import FooterEmailSignUp from './footer_email_sign_up';
import FooterDescription from './footer_description';
import SponsorsLinks from './sponsors_links';
import LoadingIcon from '../loading/loading_icon';

class Footer extends React.Component {
  render() {
    if (this.props.loading) return <LoadingIcon />;
    if (this.props.cartLoading) return '';
    
    return <footer className="app-footer" >
      <FooterNav />
      <section className="footer-links-email">
        <FooterLinks />
        <FooterEmailSignUp/>
      </section>
      
      <section className="footer-description-link">
        <FooterDescription />
        <SponsorsLinks />
      </section>
    </footer >
  }
}

export default Footer;