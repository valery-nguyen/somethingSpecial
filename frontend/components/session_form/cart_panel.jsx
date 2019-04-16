import React from 'react';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';

class CartPanel extends React.Component {
  constructor(props) {
    super(props);

    this.handleCloseClick = this.handleCloseClick.bind(this);
  }
  handleCloseClick(e) {
    e.preventDefault();
    const modalScreen = document.getElementsByClassName("cart-modal-screen")[0];
    const modalSection = document.getElementsByClassName("cart-modal-section")[0];
    const body = document.getElementById("root");
    modalScreen.classList.add("is-open");
    modalSection.classList.add("is-open");
    body.classList.remove("noscroll");

    //temporary - push to cart page
    this.props.history.push('/api/products');
  }

  render () {
    //temporary
      let tempProduct = {
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
        made_in: "usa",
        image_urls: {
          2492: { image_url: "/assets/items/49658_1_640px-31978c98720f3553950a5cd0247e9a4e20e5aae86643d5e0706cff4d0531cb4c.jpg"},
          2493: { image_url: "/assets/items/49658_2_640px-090626acad6f8538b9a44c5a16cafde1e52571378ed134a21cac00b99bf43885.jpg"}
        }

      };
    // <- see above
    let subtotal = 0;
    let productsInCart = [
      tempProduct, 
      tempProduct, 
      tempProduct, 
      tempProduct, 
      tempProduct,
      tempProduct,
      tempProduct, 
      tempProduct,
      tempProduct,
      tempProduct, 
      tempProduct,
      tempProduct,
      tempProduct];
    tempProduct.qty = 2;

    const numProducts = productsInCart.length;
    productsInCart.forEach(product => {
      subtotal = (subtotal + (product.price * product.qty));
    });
    
    const currentUser = this.props.currentUser;
    const productsLis = productsInCart.map((product, idx) => {
      let productExtension = product.title.toLowerCase().split(' ').join('-');
      return (
        <li key={idx}>
          <div className="cart-panel-details">
              < Link to={`/api/products/${productExtension}`}>
                <img onClick={this.handleCloseClick} src={Object.values(product.image_urls)[0].image_url} alt={product.title} />
              </Link >
              <div>
                <h2>{product.title}</h2>
              </div>
          </div>
          <div className="cart-panel-qty-price">
            <p>Qty: {product.qty}</p>
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

              {(productsInCart.length === 0) ? '' : <button className="view-cart-btn" onClick={this.handleCloseClick}><h1>visit cart / checkout</h1></button>}
              {(productsInCart.length === 0) ? '' : <ul>{productsLis}</ul>}
            </div>
          </div>
        </section>

      </div>
    )
  }
}

export default withRouter(CartPanel);