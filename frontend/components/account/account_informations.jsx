import React from 'react';
import { Link } from 'react-router-dom';

class AccountInformations extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      addressFormClosed: true,
      userFormClosed: true
    };

    this.handleUserClick = this.handleUserClick.bind(this);
    this.handleUserSubmit = this.handleUserSubmit.bind(this);
    this.handleAddressClick = this.handleAddressClick.bind(this);
    this.handleAddressSubmit = this.handleAddressSubmit.bind(this);
  }

  componentDidMount() {
    this.props.requestUser();
  }

  componentDidUpdate(prevProps) {
  }


  handleAddressClick(e) {
    e.preventDefault();
    (this.state.addressFormClosed) ? this.setState({ addressFormClosed: false }) :
      this.setState({ addressFormClosed: true });
  }

  handleAddressSubmit(e) {
    e.preventDefault();
    const params = {
      id: this.props.user.id,
      fname: document.getElementById("address-form-fname").value,
      lname: document.getElementById("address-form-lname").value,
      street: document.getElementById("address-form-street").value,
      zip: parseInt(document.getElementById("address-form-zip").value),
      city: document.getElementById("address-form-city").value,
      state: document.getElementById("address-form-state").value,
      phone: document.getElementById("address-form-phone").value
    };
    this.setState({ addressFormClosed: true });
    this.props.updateUser(params);
  }

  handleUserClick(e) {
    e.preventDefault();
    (this.state.userFormClosed) ? this.setState({ userFormClosed: false }) :
      this.setState({ userFormClosed: true });
  }

  handleUserSubmit(e) {
    e.preventDefault();
    const params = {
      id: this.props.user.id,
      fname: document.getElementById("user-form-fname").value || this.props.user.fname,
      lname: document.getElementById("user-form-lname").value || this.props.user.lname,
      email: document.getElementById("user-form-email").value || this.props.user.email,
      old_password: document.getElementById("user-form-password").value || '',
      new_password: document.getElementById("user-form-newpassword").value || ''
    };
    this.setState({ userFormClosed: true });
    this.props.updateUser(params);
  }

  render() {
    let user = this.props.user;
    if (!user['email']) return null;

    user.fname = user.fname || '';
    user.lname = user.lname || '';
    user.street = user.street || '';
    user.city = user.city || '';
    user.state = user.state || '';
    user.zip = user.zip || 0;
    user.phone = user.phone || '';

    const UserForm = (
      <form id="address-form" className="address-form" onSubmit={this.handleUserSubmit}>
        <div>
          <label>First Name</label>
          <input id="user-form-fname" type="text" defaultValue={user.fname} />
        </div>
        <div>
          <label>Last Name</label>
          <input id="user-form-lname" type="text" defaultValue={user.lname} />
        </div>
        <div>
            <label>Email Address</label>
            <input id="user-form-email" type="text" defaultValue={user.email} />
        </div>
        <div>
          <label>Old Password</label>
          <input id="user-form-password" type="password"/>
        </div>
        <div>
            <label>New Password</label>
            <input id="user-form-newpassword" type="password"/>
        </div>
        <button>save &amp; update</button>
        <a href="/" onClick={this.handleUserClick}>or cancel</a>
      </form>
    )

    const AddressForm = (
      <form id="address-form" className="address-form" onSubmit={this.handleAddressSubmit}>
        <div>
          <div>
            <label>First Name</label>
            <input id="address-form-fname" type="text" defaultValue={user.fname}/>
          </div>
          <div>
            <label>Last Name</label>
            <input id="address-form-lname" type="text" defaultValue={user.lname}/>
          </div>
        </div>
        <div>
          <div>
            <label>Street Address</label>
            <input id="address-form-street" type="text" defaultValue={user.street}/>
          </div>
        </div>
        <div>
          <div>
            <label>Zip Code</label>
            <input id="address-form-zip" type="text" defaultValue={(user.zip === 0) ? '' : user.zip}/>
          </div>
        </div>
        <div>
          <div>
            <label>City</label>
            <input id="address-form-city" type="text" defaultValue={user.city}/>
          </div>
          <div>
            <label>State</label>
            <input id="address-form-state" type="text" defaultValue={user.state}/>
          </div>
        </div>
        <div>
          <div>
            <label>Phone</label>
            <input id="address-form-phone" type="text" defaultValue={(user.phone === 0) ? '' : user.phone}/>
          </div>
        </div>
        <button>save address</button>
        <a href="/" onClick={this.handleAddressClick}>or cancel</a>
      </form>
    )

    const accountDisplay = (
      (this.state.userFormClosed) ?
        <div className="account-display">
          <div><h2>Name</h2><span>{user.fname} {user.lname}</span></div>
          <div><h2>Email Address</h2><span>{user.email}</span></div>
          <div><h2>Password</h2><span>*******</span></div>
          <div className="user-errors">{this.props.errors.join(", ").toLowerCase()}</div>
          <span onClick={this.handleUserClick}><a href="/">edit</a></span>
        </div> : <div className="account-display">{UserForm}</div>
    )

    const emptyAddressDisplay = (
      (this.state.addressFormClosed) ?
        <div className="address-display">
          <h2>You have no saved shipping address.</h2>
          <button onClick={this.handleAddressClick}>add shipping address</button>
        </div> : <div className="address-display address-display-green">{AddressForm}</div>
    )

    const addressDisplay = (
      (this.state.addressFormClosed) ?
      <div className="address-display">
        <p>{user.fname} {user.lname}</p>
        <p>{user.street}</p>
          <p>{user.city}{(user.city && user.state) ? ', ' : ''}{user.state} {(user.zip === 0) ? '' : user.zip}</p>
          <p>{(user.phone === 0) ? '' : user.phone}</p>
        <button onClick={this.handleAddressClick}>edit shipping address</button>
        </div> : <div className="address-display address-display-green">{AddressForm}</div>
    )

    return (
      <div className="account-info">
        <div className="account-info-outer">
          <div className="account-header">
            <h1>Your Account</h1>
          </div>
          <div className="account-user">
            {accountDisplay}
          </div>
          <div className="account-links">
            <div className="account-links-orders">
              <label>Your Orders</label>
              <p>Check the status of current orders, and review previous ones.</p>
              <Link to="/orders">view orders</Link>
            </div>
            <div className="account-links-wishes">
              <label>Wish Lists</label>
              <div><p>View items on your Wish Lists and items you</p><i className="icon-heart3"></i></div>
              <a href="#">view wish lists</a>
            </div>
          </div>
          <div className="account-addresses">
            <div>
              <h2>Saved Address</h2>
              <h3>shipping</h3>
              {(user.street.length === 0) ? emptyAddressDisplay : addressDisplay}
            </div>
          </div>

          <div className="order-help">
            <p>Need Help?</p>
            <p>Call &nbsp;<a href="tel:+14088868447">408.886.8447</a>, use our &nbsp;<Link to="/construction">live chat</Link>, or email &nbsp;<a href="mailto:valery.nguyen@ucla.edu">valery.nguyen@ucla.edu</a>.</p>
          </div>
        </div>

      </div>


    );
  }
}


export default AccountInformations;
