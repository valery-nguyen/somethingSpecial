import React from 'react';
import { Link } from 'react-router-dom';
import { withRouter } from 'react-router';

class TitleNav extends React.Component {
  handleClick(e) {
    e.preventDefault();
    this.props.history.push('/api/products');
  }

  render() {
    return <nav className="title-nav">
      <Link to="#" className="header-link" onClick={this.handleClick.bind(this)}>
        <h1> something<span>Special</span> </h1>
      </Link>
      <div className="title-search">
        <input type="text" placeholder="search keyword or item number"/>
        <button><i className="icon-search"></i></button>
      </div>
      <div className="title-cart">
        <button><i className="icon-cart"></i></button>
        <a href="#">checkout</a>
      </div>
  </nav>
  }
};

export default withRouter(TitleNav);