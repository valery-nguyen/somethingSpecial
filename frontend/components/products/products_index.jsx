import React from 'react';
import _ from 'lodash';

import ProductsIndexItem from './products_index_item';
import BackgroundBanner from '../header/background_banner';
import LinksNav from './links_nav';
import { WellnessLink } from './category_link';

class ProductsIndex extends React.Component {
  componentDidMount() {
    this.props.requestAllProducts();
    window.scrollTo(0, 0);
  }

  componentDidUpdate(prevProp) {
  }

  render() {
    const { products, loading } = this.props;

    if (loading) return null;

    return (
      <div className="background-products">
        <BackgroundBanner />
        <WellnessLink />
        <LinksNav />
        <section className="products">
          <ul>
            {products.map((product, idx) => <ProductsIndexItem key={idx} product={product} />)}
          </ul>
        </section>
      </div>

    );
  }
}

function areEqual(prevProps, nextProps) {
  // return _.isEqual(prevProps.products, nextProps.products);
  return false;
}

export default React.memo(ProductsIndex, areEqual);