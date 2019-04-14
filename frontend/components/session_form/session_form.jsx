import React from 'react';
import { withRouter } from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      fname: '',
      email: '',
      password: ''
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user).then(this.closePanel);
  }

  closePanel() {
    const modalEl = document.getElementsByClassName("modal-screen")[0];
    const modalForm = document.getElementsByClassName("modal-form")[0];
    const body = document.getElementById("root");
    modalEl.classList.add("is-open");
    modalForm.classList.add("is-open");
    body.classList.remove("noscroll");
  }

  renderErrors() {
    return (
      <ul>
        {this.props.errors.map((error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    const fnameEl = (
      <p>
        <label> First Name (Optional)</label >
        <input type="text"
          value={this.state.fname}
          onChange={this.update('fname')}
          className="login-input"
        />
      </p>
    )
    return (
      <div className="login-form-container-outer">
        <div className="login-form-container">
          <form onSubmit={this.handleSubmit} className="login-form-box">
            <div className="login-form">
              {(this.props.formType === 'create account') ? <div>{fnameEl}</div>: ''}
              <p>
                <label>Email Address</label>
                <input type="email"
                  value={this.state.username}
                  onChange={this.update('email')}
                  className="login-input"
                />
                {this.renderErrors() ? <p className="login-errors">{this.renderErrors()}</p> : ''}
              </p>

              <p>
                <label>Password</label>
                <input type="password"
                  value={this.state.password}
                  onChange={this.update('password')}
                  className="login-input"
                />
              </p>
              {(this.props.formType === 'create account') ? <p className="login-form-notes">8 to 16 characters</p> : ''}
              <input className="session-submit" type="submit" value={this.props.formType} />
              {(this.props.formType === 'sign in') ? <a href='#'>Forgot your password?</a> : ''}
              {(this.props.formType === 'create account') ? <p className="login-form-notes">We will not sell, rent, or share your address</p> : ''}
            
            </div>
          </form>
        </div>
      </div>
    );
  }
}

export default withRouter(SessionForm);