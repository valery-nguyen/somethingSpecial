import React from 'react';

import ProductsIndexItem from './products_index_item';

class ProductSearch extends React.Component {
  constructor(props) {
    super(props);

    this.wishCheck = this.wishCheck.bind(this);
  }
  componentDidMount() {
    window.scrollTo(0, 0);
    const urlParams = new URLSearchParams(this.props.location.search);
    const searchQuery = urlParams.get('q').toLowerCase();
    this.props.requestSearch(searchQuery);
    if (this.props.currentUser) {
      this.props.requestWishes();
    }
  }

  componentDidUpdate(prevProps) {
    if (prevProps.location.search !== this.props.location.search) {
      window.scrollTo(0, 0);
      const urlParams = new URLSearchParams(this.props.location.search);
      const searchQuery = urlParams.get('q').toLowerCase();
      this.props.requestSearch(searchQuery);
    }
  }

  wishCheck(product) {
    let isInWishList = false;
    if (this.props.currentUser) {
      this.props.wishes.forEach(wish => {
        if (wish.id === product.id) isInWishList = isInWishList || true;
      });
    }
    return isInWishList;
  }

  render() {
    const { searchProducts, searchQuery, loading } = this.props;
    if (loading) return null;

    return (
      <div className="product-search">
        {(searchProducts.length > 0) ? <h1>Here are your results for "{searchQuery}"</h1> : 
          <h1>Sadly, we can't find any products to match your query. Try broadening your search!</h1>}
        <div className="product-search-outer">
          <section className="product-search-section">
            <ul>
              {searchProducts.map((product, idx) => 
              <ProductsIndexItem 
                key={idx} 
                product={product} 
                isWish={this.wishCheck(product)} 
                addWish={this.props.addWish.bind(this, product.id)} 
                deleteWish={this.props.deleteWish.bind(this, product.id)}
              />)}
            </ul>
        </section>
        </div>
      </div>


    );
  }
}


export default ProductSearch;
