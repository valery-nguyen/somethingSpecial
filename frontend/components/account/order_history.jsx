import React from 'react';
import { Link } from 'react-router-dom';

class OrderHistory extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  componentDidMount() {
    window.scrollTo(0, 0);
  }

  handleClick(e) {
    e.preventDefault();
    this.props.history.push('/construction');
  }

  handleSignIn(e) {
    e.preventDefault();
    const modalEl = document.getElementsByClassName("modal-screen")[0];
    const modalForm = document.getElementsByClassName("modal-form")[0];
    const body = document.getElementById("root");
    modalEl.classList.remove("is-open");
    modalForm.classList.remove("is-open");
    body.classList.add("noscroll");
  }

  render () {
    const pastHistory = (
      <div className="order-history">
        <h1>Order History</h1>
        <p>There are no orders associated with this account.</p>
      </div>
    )

    const noHistory = (
      <div className="order-history">
        <h1>Check Order Status</h1>
        <p><a href="/" onClick={this.handleSignIn}>Sign in</a>&nbsp; to see your full order history.</p>
      </div>
    )

    return (
      <div className="order-page">
        <div>
          {(this.props.currentUser) ? pastHistory : noHistory}
          <div className="order-lookup">
            <form onSubmit={this.handleClick}>
              <div>
                <label>Order Number</label>
                <input type="text" placeholder="1234567"/>
                <p>found on order confirmation email or packing slip</p>
              </div>
              <div>
                <label>Billing Zip Code</label>
                <input type="text" />
              </div>
              <button>look up order</button>
            </form>
            <p>Was this order shipped outside the U.S.? Look up your order on the &nbsp;<a href="https://www.borderfree.com/order-status/" target="_blank">Borderfree website</a>.</p>
          </div>

          <div className="order-help">
            <p>Need Help?</p>
            <p>Call &nbsp;<a href="tel:+14088868447">408.886.8447</a>&nbsp;or email &nbsp;<a href="mailto:valery.nguyen@ucla.edu">valery.nguyen@ucla.edu</a>.</p>
          </div>
        </div>
      </div>
    )
  }

}

export default OrderHistory;