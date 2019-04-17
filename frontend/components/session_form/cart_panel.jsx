import React from 'react';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';

class CartPanel extends React.Component {
  constructor(props) {
    super(props);

    this.handleCloseClick = this.handleCloseClick.bind(this);
    this.handleProductClick = this.handleProductClick.bind(this);
    this.handleViewCartClick = this.handleViewCartClick.bind(this);
  }

  componentDidMount() {
    if (this.props.currentUser) {
      this.props.requestCartItems();
    }
  }

  componentDidUpdate(prevProps) {
    if (prevProps.currentUser && !this.props.currentUser) {
      //case of logging out
      this.props.clearCartItems();
      //clear redux store with cart
    } else if (!prevProps.currentUser && this.props.currentUser) {
      //case of logging in
      this.props.requestCartItems();
    }
  }

  handleCloseClick() {
    const modalScreen = document.getElementsByClassName("cart-modal-screen")[0];
    const modalSection = document.getElementsByClassName("cart-modal-section")[0];
    const body = document.getElementById("root");
    modalScreen.classList.add("is-open");
    modalSection.classList.add("is-open");
    body.classList.remove("noscroll");
  }

  handleProductClick() {
    this.handleCloseClick();
  }

  handleViewCartClick () {
    this.handleCloseClick();

    //temporary - push to view cart page
    this.props.history.push('/api/products');
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
          <div className="cart-panel-details">
              < Link to={`/api/products/${productExtension}`}>
              <img onClick={this.handleProductClick} src={Object.values(product.image_urls)[0].image_url} alt={product.title} />
              </Link >
              <div>
                <h2>{product.title}</h2>
              </div>
          </div>
          <div className="cart-panel-qty-price">
            <p>Qty: {product.quantity}</p>
            <p>${product.price.toFixed(2)}</p>
          </div>
          
        </li>
      )
    })

    return (
      <div className="cart-panel-outer" >
        <section className="cart-modal-screen is-open" onClick={this.handleCloseClick}>
        </section>

        <section className="cart-modal-section is-open">
          <div className="modal-close-btn">
            <button onClick={this.handleCloseClick}></button>
          </div>
          <div className="cart-panel-outer">
            <div className="cart-panel-header">
              {(productsInCart.length === 0) ? '' : <div className="cart-panel-icon-count">{numProducts}</div>}
              {(productsInCart.length === 0) ? '' : <i className="cart-panel-header-icon"></i>}
              {(productsInCart.length === 0) ? <h1>Your cart is empty</h1> : <h2>Subtotal: ${subtotal.toFixed(2)}</h2>}
            </div>
            <div className="cart-panel-body">
              {(productsInCart.length === 0) ? <img src={window.emptyCartURL} className="cart-empty-splash" /> : ''}

              {(productsInCart.length === 0) ? '' : <button className="view-cart-btn" onClick={this.handleViewCartClick}><h1>visit cart / checkout</h1></button>}
              {(productsInCart.length === 0) ? '' : <ul>{productsLis}</ul>}
            </div>
          </div>
        </section>

      </div>
    )
  }
}

export default withRouter(CartPanel);