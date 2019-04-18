import React from 'react';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';

class CartPanel extends React.Component {
  constructor(props) {
    super(props);

    this.handleCheckoutClick = this.handleCheckoutClick.bind(this);
  }

  handleCheckoutClick () {
  }

  handleQtyChange(id) {
    return (e) => {
      e.preventDefault();
      this.props.updateCartItem({ product_id: id, quantity: parseInt(e.target.value) });
    };
  }

  handleRemoveClick(id) {
    return (e) => {
      e.preventDefault();
      this.props.deleteCartItem(id);
    };

  }

  render () {
    const loading = this.props.loading;
    if (loading) return null;
    const currentUser = this.props.currentUser;
    const productsInCart = this.props.cartItems;

    let subtotal = 0;
    productsInCart.forEach(product => {
      subtotal = (subtotal + (product.price * product.quantity));
    });
    
    let qtyOptions = Array.apply(null, { length: 100 }).map(Number.call, Number);
    qtyOptions.shift();
    qtyOptions = qtyOptions.map((el, idx) => {
      return (
        <option key={idx} value={String(el)}>{el}</option>
      )
    })

    const productsLis = productsInCart.map((product) => {
      let productExtension = product.title.toLowerCase().split(' ').join('-');
      return (
        <li key={product.id}>
          <div className="cart-checkout-details">
            <div className="cart-checkout-details-inner">
                < Link to={`/product/${productExtension}`}>
                  <img src={Object.values(product.image_urls)[0].image_url} alt={product.title} />
                </Link >
                <div>
                  <h2>{product.title}</h2>
                  <p>${product.price.toFixed(2)}</p>
                </div>
              </div>

              <div className="cart-checkout-qty-remove">
                <div className="cart-checkout-qty">
                  <select onChange={this.handleQtyChange(product.id)} id="cart-checkout-qty-select" defaultValue={product.quantity} >
                    {qtyOptions}
                  </select >
                  <p>${(product.price * product.quantity).toFixed(2)}</p>
                </div>
              <a onClick={this.handleRemoveClick(product.id)}>Remove</a>
              </div>
          </div>
        </li>
      )
    })

    const emptyCartRendering = (
      <div className="cart-empty">
        <h1>Your cart is empty</h1>
        <div className="cart-checkout-empty-splash"><img src={window.emptyCartURL} /></div>
      </div>
    )

    const fullCartRendering = (
      <div className="cart-full">
        <div className="cart-body">
          <section className="cart-body-left">
            <h1>Your Cart</h1>
            <ul>{productsLis}</ul>
          </section>

          <section className="cart-body-right">
            <h2>Order Summary</h2>
            <ul>
              <li><span>Subtotal:</span><span>${subtotal.toFixed(2)}</span> </li>
              <li><span>Est. Shipping:</span><span>FREE</span></li>
              <li><span>Est. Sales Tax:</span><span>$0.00</span></li>
            </ul>
            <div className="cart-total">
                <h1>Total:</h1><p>${subtotal.toFixed(2)}</p>
            </div>
            <button className="cart-checkout-btn" onClick={this.handleCheckoutClick}><h1>	&#128274; checkout</h1></button>
            <section className="cart-body-right-footer">
              <h2>Need help?</h2>
              <ul>
                <span><i className="cart-icon-phone"></i><a href="#">408.886.8447</a></span>
                <span><i className="cart-icon-chat"></i><a href="#">live chat</a></span>
                <span><i className="cart-icon-email"></i><a href="#">help@somethingspecial.com</a></span>
              </ul>
            </section>
          </section>
          
        </div>
      </div>
    )

    return (
      <div className="cart-outer" >
        <section className="cart-section">
          <div className="cart-outer">
            {(productsInCart.length === 0) ? <div className="cart-empty-container">{emptyCartRendering}</div> : ''}
            {(productsInCart.length === 0) ? '' : <div className="cart-full-container">{fullCartRendering}</div>}
          </div>
        </section>
      </div>
    )
  }
}

export default withRouter(CartPanel);