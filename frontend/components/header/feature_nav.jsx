import React from 'react';
import { withRouter } from 'react-router';

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

  render() {
    const currentUser = this.props.currentUser;

    return (
      <nav className="feature-nav">
        <section>
          <div>
            <a href="#" className="link-blog">Our Blog: <i>The Goods</i></a>
            <a href="#"><i className="icon-gift"></i> Gift Finder</a>
          </div>

          <div>
            <a href="#" onClick={this.handleSigninClick}>
              <i className="icon-user"></i> {(currentUser) ? `Hi, ${currentUser.fname || ''} ${currentUser.lname || ''}` : 'Sign In'}
            </a>
            
            <a href="#"><i className="icon-heart"></i> Wish Lists</a>
            <a href="#"><i className="icon-flag"></i> Ship To</a>
          </div >
        </section>
      </nav>
    )
  }
};

export default withRouter(FeatureNav);