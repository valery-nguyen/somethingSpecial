import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      fname: '',
      email: '',
      password: '',
      errors: []
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.updateErrors = this.updateErrors.bind(this);
    this.closePanel = this.closePanel.bind(this);
  }

  update(field) {
    return e => {
      this.setState({ [field]: e.currentTarget.value});
      if(this.state.errors.length > 0) {
        this.setState({ errors: [] });
      }
    }
  }

  updateErrors() {
    this.setState({ errors: this.props.errors });
  }

  handleSubmit(e) {
    e.preventDefault();
    const logoutMsg = document.getElementsByClassName("logout-message")[0];
    logoutMsg.classList.add("hidden");
    
    const user = Object.assign({}, this.state);
    this.props.processForm(user).then(this.closePanel).fail(this.updateErrors);
  }

  closePanel() {
    const modalEl = document.getElementsByClassName("modal-screen")[0];
    const modalForm = document.getElementsByClassName("modal-form")[0];
    const body = document.getElementById("root");
    modalEl.classList.add("is-open");
    modalForm.classList.add("is-open");
    body.classList.remove("noscroll");
  }

  handleShowClick(e) {
    e.preventDefault();
    const pwEl = document.getElementsByClassName("login-input")[1];
    const btnEl = document.getElementsByClassName("password-show")[0];
    if (pwEl.type === "password") {
      pwEl.type = "text";
      btnEl.textContent = "HIDE";
    } else {
      pwEl.type = "password";
      btnEl.textContent = "SHOW";
    }
  }

  renderErrors() {
    return (
      <ul>
        {this.state.errors.map((error, i) => {
          if(this.props.formType === 'sign in' && 
            error === "We don't seem to have that email/password on file. Try again!") {
            return <li key={`error-${i}`}>
              {error}
            </li>
          } else if (this.props.formType === 'create account' &&
            error !== "We don't seem to have that email/password on file. Try again!") {
            return <li key={`error-${i}`}>
              {error}
            </li>
            }
        })}
      </ul>
    );
  }

  render() {
    const fnameEl = (
      <div>
        <label> First Name (Optional)</label >
        <input type="text"
          value={this.state.fname}
          onChange={this.update('fname')}
          className="login-input"
        />
      </div>
    )
    return (
      <div className="login-form-container-outer">
        <div className="login-form-container">
          <form onSubmit={this.handleSubmit} className="login-form-box">
            <div className="login-form">
              {(this.props.formType === 'create account') ? <div>{fnameEl}</div>: ''}
              <div>
                <label>Email Address</label>
                <input type="email"
                  value={this.state.username}
                  onChange={this.update('email')}
                  className="login-input"
                />
                {this.renderErrors() ? <div className="login-errors">{this.renderErrors()}</div> : ''}
              </div>

              <div>
                <label>Password</label>
                <div className="login-password">
                  <input type="password"
                    value={this.state.password}
                    onChange={this.update('password')}
                    className="login-input"
                  />
                  {(this.props.formType === 'sign in') ? <button onClick={this.handleShowClick} className="password-show" type="button">SHOW</button> : ''}
                </div>
                
              </div>
              {(this.props.formType === 'create account') ? <p className="login-form-notes">8 to 16 characters</p> : ''}
              <input className="session-submit" type="submit" value={this.props.formType} />
              {(this.props.formType === 'sign in') ? <Link onClick={this.closePanel} to="/construction">Forgot your password?</Link> : ''}
              {(this.props.formType === 'create account') ? <p className="login-form-notes">We will not sell, rent, or share your address</p> : ''}
            </div>
          </form>
        </div>
      </div>
    );
  }
}

export default withRouter(SessionForm);