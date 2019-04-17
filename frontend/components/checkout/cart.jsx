import React from 'react';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';

class CartPanel extends React.Component {
  constructor(props) {
    super(props);

    this.handleCheckoutClick = this.handleCheckoutClick.bind(this);
  }

  handleCheckoutClick () {
    //temporary - push to view cart page
    this.props.history.push('/products');
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
    
    const productsLis = productsInCart.map((product, idx) => {
      let productExtension = product.title.toLowerCase().split(' ').join('-');
      return (
        <li key={idx}>
          <div className="cart-checkout-details">
              < Link to={`/product/${productExtension}`}>
              <img src={Object.values(product.image_urls)[0].image_url} alt={product.title} />
              </Link >
              <div>
                <h2>{product.title}</h2>
              </div>
          </div>
          <div className="cart-checkout-qty-price">
            <p>Qty: {product.quantity}</p>
            <p>${product.price.toFixed(2)}</p>
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
        <div className="cart-header"></div>
        <div className="cart-body">
          <button className="cart-checkout-btn" onClick={this.handleCheckoutClick}><h1>checkout</h1></button>
          <ul>{productsLis}</ul>
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