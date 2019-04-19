import React from 'react';

import ProductsIndexItem from './products_index_item';

class ProductSearch extends React.Component {
  constructor(props) {
    super(props);

  }
  componentDidMount() {
    window.scrollTo(0, 0);
    const urlParams = new URLSearchParams(this.props.location.search);
    const searchQuery = urlParams.get('q').toLowerCase();
    this.props.requestSearch(searchQuery);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.location.search !== this.props.location.search) {
      window.scrollTo(0, 0);
      const urlParams = new URLSearchParams(this.props.location.search);
      const searchQuery = urlParams.get('q').toLowerCase();
      this.props.requestSearch(searchQuery);
    }
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
              {searchProducts.map((product, idx) => <ProductsIndexItem key={idx} product={product} />)}
            </ul>
        </section>
        </div>
      </div>


    );
  }
}


export default ProductSearch;
