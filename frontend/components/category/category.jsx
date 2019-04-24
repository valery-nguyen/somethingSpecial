import React from 'react';

import ProductsIndexItem from '../products/products_index_item';

class ProductSearch extends React.Component {
  constructor(props) {
    super(props);

    this.wishCheck = this.wishCheck.bind(this);
  }
  componentDidMount() {
    window.scrollTo(0, 0);
    const categoryName = this.props.location.pathname.slice(10);
    this.props.requestCategory(categoryName);
    if (this.props.currentUser) {
      this.props.requestWishes();
    }
  }

  componentDidUpdate(prevProps) {
    if (prevProps.location.pathname !== this.props.location.pathname) {
      window.scrollTo(0, 0);
      const categoryName = this.props.location.pathname.slice(10);
      this.props.requestCategory(categoryName);
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
    const { categoryProducts, categoryName, loading } = this.props;
    if (loading) return null;

    let bannerSource = "";
    let displayedName = "";
    switch (categoryName) {
      case 'gifts':
        bannerSource = window.womenBannerURL;
        displayedName = categoryName;
        break;
      case 'fun':
        bannerSource = window.funBannerURL;
        displayedName = categoryName;
        break;
      case 'home':
        bannerSource = window.homeBannerURL;
        displayedName = categoryName;
        break;
      case 'kitchen':
        bannerSource = window.kitchenBannerURL;
        displayedName = 'kitchen & bar';
        break;
      case 'art':
        bannerSource = window.artBannerURL;
        displayedName = categoryName;
        break;
      case 'jewelry':
        bannerSource = window.jewelryBannerURL;
        displayedName = categoryName;
        break;
      case 'women':
        bannerSource = window.womenBannerURL;
        displayedName = categoryName;
        break;
      case 'men':
        bannerSource = window.menBannerURL;
        displayedName = categoryName;
        break;
      case 'kids':
        bannerSource = window.kidsBannerURL;
        displayedName = categoryName;
        break;
      case 'teen':
        displayedName = categoryName;
        break;
      case 'sale':
        displayedName = categoryName;
        break;
      case 'new':
        displayedName = 'this just in';
        break;
    }

    return (
      <div className="category">
        <div className="category-header">
          <div>
            {(categoryName === "teen" || categoryName === "sale" ||
              categoryName === "new") ? '' : <h1>{displayedName}</h1>}
            {(categoryName === "teen" || categoryName === "sale" ||
              categoryName === "new") ? '' : <img className="category-background" src={bannerSource} />}
          </div>
          {(categoryName === "teen" || categoryName === "sale" ||
            categoryName === "new") ? <h2>{displayedName}</h2> : ''}
        </div>
        <div className="category-outer">
          <section className="category-section">
            <ul>
              {categoryProducts.map((product, idx) => 
                <ProductsIndexItem 
                  key={idx} 
                  currentUser={this.props.currentUser}
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
