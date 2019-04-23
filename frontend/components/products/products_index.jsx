import React from 'react';

import { FirstBackgroundBanner, SecondBackgroundBanner } from '../header/background_banner';
import { FirstLink, SecondLink } from './category_link';
import { TopThreeCategories, BottomThreeCategories } from './three_cat';
import LinksNav from './links_nav';
import Earth from '../theme/earth';

class ProductsIndex extends React.Component {
  constructor(props) {
    super(props);
  }
  componentDidMount() {
    window.scrollTo(0, 0);
  }

  render() {
    const { loading } = this.props;

    if (loading) return null;

    return (
      <div className="background-products main-body">
        <FirstBackgroundBanner />
        <FirstLink />
        <LinksNav />
        <TopThreeCategories />
        <SecondBackgroundBanner />
        <SecondLink />
        <Earth />
        <BottomThreeCategories />
      </div>

    );
  }
}


export default ProductsIndex;