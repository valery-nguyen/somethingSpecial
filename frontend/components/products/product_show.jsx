import React from 'react';
import AlsoLike from './also_like_container';
import ProductDetails from './product_details';

class ProductShow extends React.Component {
  constructor(props) {
    super(props);

    this.handleAddToCart = this.handleAddToCart.bind(this);
  }

  componentDidMount() {
    window.scrollTo(0, 0);
    if (!this.props['product']) {
      this.props.requestProduct(this.props.productTitle);
    } else {
      if (!Object.keys(this.props.products).includes(String(this.props.product.id)) ||
        !this.props.products[this.props.product.id]["item_id"])
          this.props.requestProduct(this.props.productTitle);
    }
  }

  componentDidUpdate(prevProps) {
    window.scrollTo(0, 0);
    if (prevProps.location.pathname !== this.props.location.pathname)
    {
      if (!Object.keys(this.props.products).includes(String(this.props.product.id)) ||
        !this.props.products[this.props.product.id]["item_id"])
          this.props.requestProduct(this.props.productTitle);
    }
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

  handleAddToCart(e) {
    e.preventDefault();
    const qtyEl = document.getElementById("show-product-qty");
    const itemQty = parseInt(qtyEl.options[qtyEl.options.selectedIndex].value);
    const cartItem = {
      product_id: this.props.product.id,
      quantity: itemQty
    };
    this.props.addCartItem(cartItem).then(this.previewCart);
  }

  render() {
    const { product, loading } = this.props;
    
    if (!product || this.props.images.length === 0 || loading) return null;

    const imagesLis = this.props.images.map( (image, idx) => {
      return <li key={idx}> <img src={ image.image_url } alt={ product.title } /> </li>
    });
   
    let qtyOptions = Array.apply(null, { length: 100 }).map(Number.call, Number)
    qtyOptions.shift();
    qtyOptions = qtyOptions.map((el, idx) => {
      return <option key={idx} value={String(el)}>{el}</option>
    })

    return (
      <section className="product-show-page main-body">
        <section className="product-show">
          <div className="show-images">
            <img src={this.props.images[0].image_url} />
            <ul>{imagesLis}</ul>
          </div>
          <section className="show-product-summary">
            <h1>{product.title}</h1>
            <p className="show-product-description">{product.description}</p>
            <p className="show-product-price">${product.price}</p>
            <div>
              <select id="show-product-qty" defaultValue="1">
                {qtyOptions}
              </select>
              <button onClick={this.handleAddToCart}>add to cart</button>
            </div>
            <div className="show-product-wish">
              <a href="#"><i className="icon-heart2"></i></a>
              <a href="#">wish list</a>
            </div>
            <div className="show-product-share">
              <ul>
                <li><a href="#"><i className="icon-email2"></i></a></li>
                <li><a href="#"><i className="icon-facebook2"></i></a></li>
                <li><a href="#"><i className="icon-pinterest2"></i></a></li>
              </ul>
            </div>
          </section>
        </section>
        <ProductDetails product={product} />
        <AlsoLike product={product} />
      </section>
    );
  }
}

export default ProductShow;
