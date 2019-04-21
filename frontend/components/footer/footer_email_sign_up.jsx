import React from 'react';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';

class FooterEmailSignUp extends React.Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    document.getElementById("footer-email-signup-input").value = '';
    document.getElementById("footer-email-signup-btn").innerHTML = "THANK YOU!";
    setTimeout(function () {
      document.getElementById("footer-email-signup-btn").innerHTML = "SUBMIT";
    }, 10000);
  
  }

  render() {
    return <section className="footer-email-signup">
      <div>
        <form onSubmit={this.handleSubmit}>
          <label>Sign Up For Emails</label>
          <div>
            <input id="footer-email-signup-input" type="text" placeholder="email" />
            <button id="footer-email-signup-btn">SUBMIT</button>
          </div>
        </form>
      </div>

      <section>
        <i></i>
        <div>
          <h2>Want Unlimited FREE Shipping?</h2>
          <p>Sign up for Uncommon Perks and enjoy it for $19 a year! <Link to="/construction">Learn More</Link></p>
        </div>
      </section>

    </section>
  }

};

export default withRouter(FooterEmailSignUp);