import React from 'react';

import LoginForm from './login_form_container';
import SignupForm from './signup_form_container';
import AccountPanel from './account_panel_container';

class SessionPanel extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      signInOpen: true,
      signUpOpen: false
    }

    this.handleSigninOpen = this.handleSigninOpen.bind(this);
    this.handleSignUpOpen = this.handleSignUpOpen.bind(this);
    this.handleDemoSubmit = this.handleDemoSubmit.bind(this);
    this.closePanel = this.closePanel.bind(this);
  }

  // this function handleDemoSubmit  and closePanel have been added for demonstration purposes only
  handleDemoSubmit(e) {
    e.preventDefault();
    const logoutMsg = document.getElementsByClassName("logout-message")[0];
    logoutMsg.classList.add("hidden");
    const demoUser = {
      email: 'valery.nguyen@ucla.edu',
      password: 'california'
    };
    this.props.login(demoUser).then(this.closePanel);
  }
  closePanel() {
    const modalEl = document.getElementsByClassName("modal-screen")[0];
    const modalForm = document.getElementsByClassName("modal-form")[0];
    const body = document.getElementById("root");
    modalEl.classList.add("is-open");
    modalForm.classList.add("is-open");
    body.classList.remove("noscroll");
  }
  // <-- see opening comment above

  handleCloseClick(e) {
    e.preventDefault();
    const modalEl = document.getElementsByClassName("modal-screen")[0];
    const modalForm = document.getElementsByClassName("modal-form")[0];
    const body = document.getElementById("root");
    modalEl.classList.add("is-open");
    modalForm.classList.add("is-open");
    body.classList.remove("noscroll");

    const logoutMsg = document.getElementsByClassName("logout-message")[0];
    logoutMsg.classList.add("hidden");
  }

  handleSigninOpen(e) {
    e.preventDefault();
    const signInSection = document.getElementsByClassName("signInToggle")[0];
    const signUpSection = document.getElementsByClassName("signUpToggle")[0];
    if (this.state.signInOpen) {
      this.setState({ signInOpen: false });
      signInSection.innerHTML = "&#x2c5;";
    } else {
      this.setState({ signInOpen: true });
      this.setState({ signUpOpen: false});
      signInSection.innerHTML = "&#x2c4;";
      signUpSection.innerHTML = "&#x2c5;";
    }
  }

  handleSignUpOpen(e) {
    e.preventDefault();
    const signInSection = document.getElementsByClassName("signInToggle")[0];
    const signUpSection = document.getElementsByClassName("signUpToggle")[0];
    if (this.state.signUpOpen) {
      this.setState({ signUpOpen: false});
      signUpSection.innerHTML = "&#x2c5;";
    } else {
      this.setState({ signUpOpen: true});
      this.setState({ signInOpen: false});
      signInSection.innerHTML = "&#x2c5;";
      signUpSection.innerHTML = "&#x2c4;";
    }
  }

  render () {
    const currentUser = this.props.currentUser;
    return (
      <div className="modal" >
        <section className="modal-screen is-open" onClick={this.handleCloseClick}>
        </section>

        <section className="modal-form is-open">
          <div className="modal-close-btn">
            <button onClick={this.handleCloseClick}></button>
          </div>
          <div className="modal-form-outer">
            <div className="modal-form-header">
              <i></i>
              <h1>{(currentUser) ? `Hi, ${currentUser.fname || ''} ${currentUser.lname || ''}` : 'Have an Account?'}</h1>
              <p className="logout-message hidden">You've been successfully signed out</p>
            </div>
            <div className="modal-form-login-container">
              {currentUser ? '' : <h1 onClick={this.handleSigninOpen}>Sign In<button className="signInToggle">&#x2c4;</button></h1>}
              {(!currentUser && this.state.signInOpen) ? <LoginForm /> : ''}
              {(currentUser) ? <AccountPanel /> : ''}
            </div>
            <div className="modal-form-signup-container">
              {currentUser ? '' : <h1 onClick={this.handleSignUpOpen}>Create Account<button className="signUpToggle">&#x2c5;</button></h1>}
              {(!currentUser && this.state.signUpOpen) ? <SignupForm /> : ''}
            </div>
            {(currentUser) ? '' : <hr></hr>}
          </div>

          {/* temporary button to user for demonstration */}
          {(currentUser) ? '' : <input className="session-demo-btn" type="submit" onClick={this.handleDemoSubmit} value="demo sign in" />}
          
        
        </section>

      </div>
    )
  }
}

export default SessionPanel;