import React from 'react';
import { withRouter } from 'react-router';
import { Link } from 'react-router-dom';

class FeatureNav extends React.Component {
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
      <nav className="feature-nav">
        <section>
          <div>
            <div>
              <a href="https://www.linkedin.com/in/valeryn/" target="_blank" className="personal-links"><i className="icon-linkedin"></i></a>
              <a href="https://angel.co/valeryn" target="_blank" className="personal-links"><i className="icon-angel"></i></a>
              <a href="https://github.com/valery-nguyen/somethingSpecial" target="_blank" className="personal-links"><i className="icon-github"></i></a>
            </div>
            {/* <a href="https://www.uncommongoods.com/blog/" className="link-blog">Our Blog: <i>The Goods</i></a> */}
            {/* <Link to="/construction"><i className="icon-gift"></i><span>Gift Finder</span></Link> */}
          </div>

          <div>
            <a href="/" onClick={this.handleSigninClick}>
              <i className="icon-user"></i> {(currentUser) ? `Hi, ${currentUser.fname || ''} ${currentUser.lname || ''}` : 'Sign In'}
            </a>
            
            <a href="#"><i className="icon-heart"></i> <span>Wish Lists</span></a>
            <a href="/" onClick={this.handleShipClick}><i className="icon-flag"></i> <span>Ship To</span></a>
          </div >
        </section>
      </nav>
    )
  }
};

export default withRouter(FeatureNav);