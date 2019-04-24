import React from 'react';
import { Link } from 'react-router-dom';

class Wishes extends React.Component {
  constructor(props) {
    super(props);

    this.handleAddToCart = this.handleAddToCart.bind(this);
    this.handleRemove = this.handleRemove.bind(this);
  }

  componentDidMount() {
    this.props.requestWishes();
  }

  handleAddToCart(product) {
    return (e) => {
    e.preventDefault();
      const cartItem = {
        product_id: product.id,
        quantity: 1
      };
      this.props.addCartItem(cartItem).then(this.previewCart);
    };
  }

  previewCart() {
    const modalScreen = document.getElementsByClassName("cart-modal-screen")[0];
    const modalSection = document.getElementsByClassName("cart-modal-section")[0];
    const body = document.getElementById("root");
    modalScreen.classList.remove("is-open");
    modalSection.classList.remove("is-open");
    body.classList.add("noscroll");

    setTimeout(function () {
      modalScreen.classList.add("is-open");
      modalSection.classList.add("is-open");
      body.classList.remove("noscroll");
    }, 1500);
  }

  handleRemove(product) {
    return (e) => {
      e.preventDefault();
      this.props.deleteWish(product.id);
    };
  }

  render() {
    const { wishes, loading } = this.props;
    if (loading) return null;

    const wishesLis = wishes.map( product => {
      const productExtension = product.title.toLowerCase().split(' ').join('-');
      const imagesArr = Object.values(product.image_urls);
      return (
        <li key={product.id} className="wishes-item">
          <Link to={`/product/${productExtension}`}>
            <img src={imagesArr[0].image_url} alt={product.title} />
            <h2>{product.title}</h2>
          </Link>
        <span>${product.price}</span>
        <div>
          <button onClick={this.handleAddToCart(product)}>add to cart</button>
          <a href="/" onClick={this.handleRemove(product)}>remove</a>
        </div>
      </li>
      )
    })

    return (
      <div className="wishes">
        <div className="wishes-header">
          <div className="wishes-header-inner"><h1>items i</h1><i className="icon-heart2-full"></i></div>
        </div>
        <div className="wishes-body">
          <div className="wishes-body-inner">
            <ul>
              {wishesLis}
            </ul>
          </div>
        </div>
      </div>
    );
  }
}

export default Wishes;
