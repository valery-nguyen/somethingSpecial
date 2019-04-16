import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

import ProductSearch from '../search/product_search_container';

class TitleNav extends React.Component {
  handleCartClick(e) {
    e.preventDefault();
    const modalEl = document.getElementsByClassName("cart-modal-screen")[0];
    const modalForm = document.getElementsByClassName("cart-modal-section")[0];
    const body = document.getElementById("root");
    modalEl.classList.remove("is-open");
    modalForm.classList.remove("is-open");
    body.classList.add("noscroll");
  }

  handleClick(e) {
    e.preventDefault();
    this.props.history.push('/');
  }

  render() {
    return <nav className="title-nav">
      <Link to="/" className="header-link" onClick={this.handleClick.bind(this)}>
        <h1> something<span>Special</span> </h1>
      </Link>
      <ProductSearch />
      <div className="title-cart" >
        <div className="title-cart-inner" onClick={this.handleCartClick}>
          {(false) ? '' : <div className="title-nav-cart-count">{98}</div>}
          {(false) ? <button><i className="icon-cart"></i></button> : <button><i className="title-nav-empty-cart-icon"></i></button>}
        </div>

        <a href="#">checkout</a>
      </div>
  </nav>
  }
};

export default withRouter(TitleNav);