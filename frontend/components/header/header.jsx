import React from 'react';

import FeatureNav from './feature_nav';
import TitleNav from './title_nav_container';
import CategoryNav from './category_nav';

class Header extends React.Component {
  render() {
    // const loading = this.props.loading;
    // if (loading) return null;

    return <header className="app-header" >
      <FeatureNav />
      <TitleNav />
      <CategoryNav />
    </header >
  }
}

export default Header;