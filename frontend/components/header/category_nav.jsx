import React from 'react';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';

class CategoryNav extends React.Component {
  constructor(props) {
    super(props);

    this.handleClick = this.handleClick.bind(this);
  }

  componentDidUpdate(prevProps) {
    if (prevProps.location.pathname !== this.props.location.pathname) {
      const ulEl = document.getElementsByClassName("category-nav-links")[0];
      const liEl = document.getElementById("hamburger-dropdown-li");
      ulEl.classList.add("hamburger-li-hidden");
      liEl.classList.add("hamburger-bg-open-icon");
      liEl.classList.remove("hamburger-bg-close-icon");
    }
  }


  handleClick(e) {
    e.preventDefault();
    const ulEl = document.getElementsByClassName("category-nav-links")[0];
    const liEl = document.getElementById("hamburger-dropdown-li");
    if (e.target.id === "hamburger-dropdown-li" && 
      ulEl.className === "category-nav-links hamburger-li-hidden") {
      ulEl.classList.remove("hamburger-li-hidden");
      liEl.classList.remove("hamburger-bg-open-icon");
      liEl.classList.add("hamburger-bg-close-icon");

    } else if (e.target.id === "hamburger-dropdown-li") {
      ulEl.classList.add("hamburger-li-hidden");
      liEl.classList.add("hamburger-bg-open-icon");
      liEl.classList.remove("hamburger-bg-close-icon");
    }
      
  }


  render () {
    return <nav className="category-nav">
      <ul id="hamburger-dropdown-btn"className="hamburger-dropdown">
        <li onClick={this.handleClick} id="hamburger-dropdown-li" className="hamburger-bg-open-icon">
          <ul className="category-nav-links hamburger-li-hidden">
            <li><Link to="/category/gifts">gifts</Link></li>
            <li><Link to="/category/fun">fun</Link></li>
            <li><Link to="/category/home">home</Link></li>
            <li><Link to="/category/kitchen">kitchen &amp; bar</Link></li >
            <li><Link to="/category/art">art</Link></li >
            <li><Link to="/category/jewelry">jewelry</Link></li >
            <li><Link to="/category/women">women</Link></li>
            <li><Link to="/category/men">men</Link></li >
            <li><Link to="/category/kids">kids</Link></li >
            <li><Link to="/category/sale">sale</Link></li >
            <li><Link to="/category/new">this just in</Link></li >
          </ul>
        </li>
      </ul>
    </nav>
  }
};

export default withRouter(CategoryNav);