import React from 'react';
import { connect } from 'react-redux';

import LoginForm from './login_form_container';
import SignupForm from './signup_form_container';
import AccountPanel from './account_panel_container';

class SessionPanel extends React.Component {
  handleCloseClick(e) {
    e.preventDefault();
    const modalEl = document.getElementsByClassName("modal-screen")[0];
    const modalForm = document.getElementsByClassName("modal-form")[0];
    const body = document.getElementById("root");
    modalEl.classList.add("is-open");
    modalForm.classList.add("is-open");
    body.classList.remove("noscroll");
  }

  render () {
    const currentUser = this.props.currentUser;
    return (
      <div className="modal">
        <section className="modal-screen is-open">
        </section>

        <section className="modal-form is-open">
          <div className="modal-close-btn">
            <button onClick={this.handleCloseClick}></button>
          </div>
          <div className="modal-form-outer">
            <div className="modal-form-header">
              <i></i>
              <h1>{(currentUser) ? `Hi, ${currentUser.fname || ''} ${currentUser.lname || ''}` : 'Have an Account?'}</h1>
            </div>
            <div className="modal-form-login-container">
              {currentUser ? '' : <h1>Sign In</h1>}
              {currentUser ? <AccountPanel /> : <LoginForm />}
            </div>
            <div className="modal-form-signup-container">
              {currentUser ? '' : <h1>Create Account</h1>}
              {currentUser ? '' : <SignupForm />}
            </div>
          </div>
          
        </section>

      </div>
    )
  }
}

export default SessionPanel;