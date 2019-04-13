import React from 'react';

const FooterEmailSignUp = () => {
  return <section className="footer-email-signup">
    <div>
      <form>
        <label>Sign Up For Emails</label>
        <div>
          <input type="text" placeholder="email" />
          <button>SUBMIT</button>
        </div>
      </form>
    </div>

    <section>
      <i></i>
      <div>
        <h2>Want Unlimited FREE Shipping?</h2>
        <p>Sign up for Uncommon Perks and enjoy it for $19 a year! <a href="#">Learn More</a></p>
      </div>
    </section>

  </section>
};

export default FooterEmailSignUp;