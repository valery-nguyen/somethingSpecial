import React from 'react';

import FooterNav from './footer_nav';
import FooterLinks from './footer_links';
import FooterEmailSignUp from './footer_email_sign_up';
import FooterDescription from './footer_description';
import SponsorsLinks from './sponsors_links';

class Footer extends React.Component {
  render() {
    const loading = this.props.loading;
    if (loading) return null;
    
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