import { connect } from 'react-redux';

import CartPanel from './cart_panel';
import { requestCartItems, clearCartItems } from '../../actions/cart_actions';
import { selectCartItems } from '../../reducers/selectors';

const mapStateToProps = ({ session, entities: { users, cartItems }, ui: { loading }, errors }) => {
  const loadingState = loading.cartLoading;
  return {
    currentUser: users[session.currentUserId],
    cartItems: selectCartItems(cartItems),
    loading: loadingState,
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