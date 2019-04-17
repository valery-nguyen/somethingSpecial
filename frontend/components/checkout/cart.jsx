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
    const numProducts = productsInCart.length;

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

    return (

  
      <div className="cart-outer" >

        <section className="cart-section">
          <div className="cart-outer">
            <div className="cart-header">
              {(productsInCart.length === 0) ? '' : <div className="cart-icon-count">{numProducts}</div>}
              {(productsInCart.length === 0) ? '' : <i className="cart-header-icon"></i>}
              {(productsInCart.length === 0) ? <h1>Your cart is empty</h1> : <h2>Subtotal: ${subtotal.toFixed(2)}</h2>}
            </div>
            <div className="cart-body">
              {(productsInCart.length === 0) ? <div className="cart-checkout-empty-splash"><img src={window.emptyCartURL}/></div> : ''}

              {(productsInCart.length === 0) ? '' : <button className="cart-checkout-btn" onClick={this.handleCheckoutClick}><h1>checkout</h1></button>}
              {(productsInCart.length === 0) ? '' : <ul>{productsLis}</ul>}
            </div>
          </div>
        </section>

      </div>
    )
  }
}

export default withRouter(CartPanel);