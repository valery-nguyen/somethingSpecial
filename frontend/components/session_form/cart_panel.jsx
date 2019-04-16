import React from 'react';
import { withRouter } from 'react-router';

class CartPanel extends React.Component {
  handleCloseClick(e) {
    e.preventDefault();
    const modalScreen = document.getElementsByClassName("cart-modal-screen")[0];
    const modalSection = document.getElementsByClassName("cart-modal-section")[0];
    const body = document.getElementById("root");
    modalScreen.classList.add("is-open");
    modalSection.classList.add("is-open");
    body.classList.remove("noscroll");

    this.props.history.push('/api/products');
  }

  render () {
    //temporary
      const tempProduct = {
        title: 'Birthstone Wishing Balls',
        description: "Capture a single wish, accomplishment, or meditation every week throughout the year inside this work of art.",
        price: 32.59,
        story_title: "Your Sphere of Influence",
        story_body: "Your birthday is like a private New Year",
        maker_name: "Jill Henrietta Davis",
        maker_location: "Rhode Island",
        maker_quote: "When you relinquish the tools you take for granted ... you have to stretch and find new tools to suit the new situation. Sometimes it’s scary, sometimes it’s awkward, often it’s funny, nearly always it’s a great investment.",
        maker_description: "During her freshman year studying fashion at Parsons School of Design, Jill Davis realized her clothes were more like wearable sculptures than fashion. She wanted to stay at Parsons, but she began exploring other departments. The day she walked into the glass studio and saw molten glass for the first time, her search was over. Glass is the most challenging and rewarding material I have ever encountered, says Jill. You can’t bully it—you are perpetually persuading and coaxing the glass into shape. Even the best living master glass blowers cannot always get the glass to do what they want! It’s this feisty streak that keeps me enchanted.",
        made_from: "paper, handblown glass",
        measurements: '4" H x 3.5" diam. Paper slips: 1" L x 3" W',
        care: "",
        notes: "Includes 52 slips of paper.",
        item_id: 26446,
        made_in: "usa"
      };
    // <- see above
    let subtotal = 58.5945645;
    let productsInCart = [tempProduct];
    // let productsInCart = [];

    // const numProducts = productsInCart.length;
    const numProducts = 75; // for testing, to remove
    productsInCart.forEach(product => {
      subtotal = (subtotal + product.price).toFixed(2);
    });
    
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
              {(productsInCart.length === 0) ? '' : <div className="cart-panel-icon-count">{numProducts}</div>}
              {(productsInCart.length === 0) ? '' : <i className="cart-panel-header-icon"></i>}
              {(productsInCart.length === 0) ? <h1>Your cart is empty</h1> : <h2>Subtotal: ${subtotal.toString()}</h2>}
            </div>
            <div className="cart-panel-body">
              {(productsInCart.length === 0) ? <img src={window.emptyCartURL} className="cart-empty-splash" /> : ''}
              {(productsInCart.length === 0) ? '' : <button className="view-cart-btn" onClick={this.handleCloseClick.bind(this)}><h1>visit cart / checkout</h1></button>}
            </div>
          </div>
        </section>

      </div>
    )
  }
}

export default withRouter(CartPanel);