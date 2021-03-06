import React from 'react';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';

class FeatureNav extends React.Component {
  constructor(props) {
    super(props);

    this.handleWishClick = this.handleWishClick.bind(this);
  }

  handleWishClick(e) {
    e.preventDefault();
    if (this.props.currentUser) {
      this.props.history.push('/wishes');
    } else {
      const modalEl = document.getElementsByClassName("modal-screen")[0];
      const modalForm = document.getElementsByClassName("modal-form")[0];
      const body = document.getElementById("root");
      modalEl.classList.remove("is-open");
      modalForm.classList.remove("is-open");
      body.classList.add("noscroll");
    }
  }


  handleSigninClick(e) {
    e.preventDefault();
    const modalEl = document.getElementsByClassName("modal-screen")[0];
    const modalForm = document.getElementsByClassName("modal-form")[0];
    const body = document.getElementById("root");
    modalEl.classList.remove("is-open");
    modalForm.classList.remove("is-open");
    body.classList.add("noscroll");
  }

  handleShipClick(e) {
    e.preventDefault();
    const modalEl = document.getElementsByClassName("ship-modal-screen")[0];
    const modalForm = document.getElementsByClassName("ship-modal-section")[0];
    const body = document.getElementById("root");
    modalEl.classList.remove("is-open");
    modalForm.classList.remove("is-open");
    body.classList.add("noscroll");
  }

  render() {
    const currentUser = this.props.currentUser;

    return (
      <nav id="feature-nav" className="feature-nav feature-nav-display">
        <section>
          <div id="personal-links">
            <div>
              <a href="https://www.linkedin.com/in/valeryn/" target="_blank" className="personal-links"><i className="icon-linkedin"></i></a>
              <a href="https://angel.co/valeryn" target="_blank" className="personal-links"><i className="icon-angel"></i></a>
              <a href="https://github.com/valery-nguyen/somethingSpecial" target="_blank" className="personal-links"><i className="icon-github"></i></a>
            </div>
            {/* <a href="https://www.uncommongoods.com/blog/" target="_blank" className="link-blog">Our Blog: <i>The Goods</i></a> */}
            {/* <Link to="/construction"><i className="icon-gift"></i><span>Gift Finder</span></Link> */}
          </div>

          <div>
            <a href="/" onClick={this.handleSigninClick}>
              <i className="icon-user"></i> {(currentUser) ? <div>Hi, {currentUser.fname || ''} {currentUser.lname || ''}</div> : <div>Sign In</div>}
            </a>
            
            <a href="/" onClick={this.handleWishClick}><i className="icon-heart"></i> <span>Wish Lists</span></a>
            <a href="/" onClick={this.handleShipClick}><i className="icon-flag"></i> <span>Ship To</span></a>
          </div >
        </section>
      </nav>
    )
  }
};

export default withRouter(FeatureNav);