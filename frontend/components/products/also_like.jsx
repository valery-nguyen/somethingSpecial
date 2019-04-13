import React from 'react';
import ProductsIndexItem from './products_index_item';

class AlsoLike extends React.Component {
  render () {
    return <section className="also-like">
      <label>you might also like</label>
      <ul>
        {this.props.relatedProducts.map((product, idx) => <ProductsIndexItem key={idx} product={product} />)}
      </ul>
    </section>
  }
};

export default AlsoLike;