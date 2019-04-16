import React from 'react';

class CartPanel extends React.Component {
  handleCloseClick(e) {
    e.preventDefault();
    const modalScreen = document.getElementsByClassName("cart-modal-screen")[0];
    const modalSection = document.getElementsByClassName("cart-modal-section")[0];
    const body = document.getElementById("root");
    modalScreen.classList.add("is-open");
    modalSection.classList.add("is-open");
    body.classList.remove("noscroll");
  }

  render () {
    //temporary
    let productsInCart = [];

    const currentUser = this.props.currentUser;
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
              {(productsInCart.length === 0) ? '' : <i className="cart-panel-header-icon"></i>}
              {(productsInCart.length === 0) ? <h1>Your cart is empty</h1> : <h1>Subtotal: $${26}</h1>}
            </div>
            <div className="cart-panel-body">
              {(productsInCart.length === 0) ? <img src={window.emptyCartURL} className="cart-empty-splash" /> : ''}
            </div>
          </div>
        </section>

      </div>
    )
  }
}

export default CartPanel;