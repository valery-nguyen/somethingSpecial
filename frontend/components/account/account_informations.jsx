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
    // this.props.requestUser(this.props.currentUser);
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
      fname: document.getElementById("address-form-fname").value,
      lname: document.getElementById("address-form-lname").value,
      street: document.getElementById("address-form-street").value,
      zip: parseInt(document.getElementById("address-form-zip").value),
      city: document.getElementById("address-form-city").value,
      state: document.getElementById("address-form-state").value,
      phone: parseInt(document.getElementById("address-form-phone").value)
    };
    this.setState({ addressFormClosed: true });
  }

  handleUserClick(e) {
    e.preventDefault();
    (this.state.userFormClosed) ? this.setState({ userFormClosed: false }) :
      this.setState({ userFormClosed: true });
  }

  handleUserSubmit(e) {
    e.preventDefault();
    const params = {
      fname: document.getElementById("user-form-fname").value,
      lname: document.getElementById("user-form-lname").value,
      password: document.getElementById("user-form-password").value,
      newpassword: parseInt(document.getElementById("user-form-newpassword").value)
    };
    this.setState({ userFormClosed: true });
  }

  render() {
    // const { user, loading } = this.props;
    // if (loading) return null;
    //show error messages 

    const user = {
      fname: 'Valery', 
      lname: 'Nguyen', 
      email: 'admin@gmail.com',
      street: '590 Climbing Rose Blvd',
      zip: 29829,
      city: 'Graniteville',
      state: 'SC',
      phone: 4088868447
    };

    const UserForm = (
      <form id="address-form" className="address-form" onSubmit={this.handleAddressSubmit}>
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
            <input id="address-form-zip" type="text" defaultValue={user.zip}/>
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
            <input id="address-form-phone" type="text" defaultValue={user.phone}/>
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
        <p>{user.city}, {user.state} {user.zip}</p>
        <p>{user.phone}</p>
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
