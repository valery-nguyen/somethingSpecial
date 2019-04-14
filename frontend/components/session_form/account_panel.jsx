import React from 'react';

class AccountPanel extends React.Component {
  render() {
    let currentUser = this.props.currentUser;
    return (
      <div className="account-panel">
        <section>
          <a href="#"> view account</a>
          <ul>
            <li><a href="#">Order Lookup</a></li>
            <li><a href="#">Wish List</a></li>
            <li><a onClick={this.props.logout}>Sign Out</a></li>
          </ul>
        </section>
      </div>
    )
  }
}

export default AccountPanel;