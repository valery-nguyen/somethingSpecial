import React from 'react';
import { Link } from 'react-router-dom';
import _ from 'lodash';

import ProductsIndexItem from './products_index_item';
import { FirstBackgroundBanner, SecondBackgroundBanner } from '../header/background_banner';
import LinksNav from './links_nav';
import { FirstLink, SecondLink } from './category_link';
import Earth from '../theme/earth';

class ProductsIndex extends React.Component {
  constructor(props) {
    super(props);

    this.arePreviewsInState = this.arePreviewsInState.bind(this);
  }
  componentDidMount() {
    // this.props.requestAllProducts();
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
    // if (!this.arePreviewsInState()) return null;

    const threeCategoriesEl = (
      <div className="home-three-cat">
        <div>
          <Link to="/category/home"><img src={window.firstCatImgURL} /></Link>
          <div>
            <Link to="/category/home"><h2>Gifts for Mom</h2></Link>
            <Link to="/category/home"><h3>touch her heart</h3></Link>
          </div>
        </div>
        <div>
          <Link to="/category/home"><img src={window.secondCatImgURL} /></Link>
          <div>
            <Link to="/category/home"><h2>Home Gifts</h2></Link>
            <Link to="/category/home"><h3>new &amp; faves</h3></Link>
          </div>
        </div>
        <div>
          <Link to="/category/kitchen"><img src={window.thirdCatImgURL} /></Link>
          <div>
            <Link to="/category/kitchen"><h2>Kitchen Gifts</h2></Link>
            <Link to="/category/kitchen"><h3>smart and sweet</h3></Link>
          </div>
        </div>
      </div>
    )


    return (
      <div className="background-products main-body">
        <FirstBackgroundBanner />
        <FirstLink />
        <LinksNav />
        {threeCategoriesEl}
        <SecondBackgroundBanner />
        <SecondLink />
        <Earth />
        {/* <section className="products">
          <ul>
            {products.map((product, idx) => <ProductsIndexItem key={idx} product={product} />)}
          </ul>
        </section> */}
      </div>

    );
  }
}


export default ProductsIndex;