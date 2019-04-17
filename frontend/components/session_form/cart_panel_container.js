import { connect } from 'react-redux';

import CartPanel from './cart_panel';
import { requestCartItems, clearCartItems } from '../../actions/products_actions';
import { selectCartItems } from '../../reducers/selectors';

const mapStateToProps = ({ session, entities: { users, cartItems }, ui: { loading }, errors }) => {
  return {
    currentUser: users[session.currentUserId],
    cartItems: selectCartItems(cartItems),
    loading: loading.cartLoading,
    errors: errors.cart,
  };
};

const mapDispatchToProps = dispatch => {
  return { 
    requestCartItems: () => dispatch(requestCartItems()),
    clearCartItems: () => dispatch(clearCartItems()) 
  
  }
};


export default connect(mapStateToProps, mapDispatchToProps)(CartPanel);