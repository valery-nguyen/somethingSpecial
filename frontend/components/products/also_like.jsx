import React from 'react';
import ProductsIndexItem from './products_index_item';

class AlsoLike extends React.Component {
  render () {
    return <section className="also-like">
      <label>you might also like</label>
      <ul>
        {this.props.relatedProducts.map((product, idx) => 
          <ProductsIndexItem 
            key={idx}
            currentUser={this.props.currentUser}
            product={product}
            isWish={this.props.isWish(product)}
            addWish={this.props.addWish.bind(this, product.id)}
            deleteWish={this.props.deleteWish.bind(this, product.id)}
          />)}
      </ul>
    </section>
  }
};

export default AlsoLike;