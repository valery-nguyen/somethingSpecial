import React from 'react';
import _ from 'lodash';

import ProductsIndexItem from './products_index_item';
import BackgroundBanner from '../header/background_banner';
import LinksNav from './links_nav';
import { FirstLink } from './category_link';

class ProductsIndex extends React.Component {
  constructor(props) {
    super(props);

    this.arePreviewsInState = this.arePreviewsInState.bind(this);
  }
  componentDidMount() {
    this.props.requestAllProducts();
    window.scrollTo(0, 0);
  }

  componentDidUpdate(prevProp) {
  }

  arePreviewsInState() {
    if (this.props.products.length === 0) return false;
    let numPreviewsLoaded = 0;
    Object.values(this.props.products).forEach(product => {
      if (product['image_urls']) numPreviewsLoaded = numPreviewsLoaded + 1;
    });
    return (this.props.products.length === numPreviewsLoaded);
  }

  render() {
    const { products, loading } = this.props;

    if (loading) return null;
    if (!this.arePreviewsInState()) return null;

    return (
      <div className="background-products main-body">
        <BackgroundBanner />
        <FirstLink />
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


export default ProductsIndex;