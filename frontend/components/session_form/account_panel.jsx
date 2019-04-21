import React from 'react';
import { Link } from 'react-router-dom';

class AccountPanel extends React.Component {
  handleLogoutClick(e) {
    e.preventDefault();
    const logoutMsg = document.getElementsByClassName("logout-message")[0];
    this.props.logout();
    logoutMsg.classList.remove("hidden");
  }

  closePanel() {
    const modalEl = document.getElementsByClassName("modal-screen")[0];
    const modalForm = document.getElementsByClassName("modal-form")[0];
    const body = document.getElementById("root");
    modalEl.classList.add("is-open");
    modalForm.classList.add("is-open");
    body.classList.remove("noscroll");
  }

  render() {
    let currentUser = this.props.currentUser;
    return (
      <div className="account-panel">
        <section>
          <a href="#" onClick={this.closePanel}> view account</a>
          <div>
            <Link to="/orders" onClick={this.closePanel}>Order Lookup</Link>
            <div><i></i><a href="#" onClick={this.closePanel}>Wish List (0)</a></div>
            <a href="#" onClick={this.handleLogoutClick.bind(this)}>Sign Out</a>
          </div>
        </section>
      </div>
    )
  }
}

export default AccountPanel;