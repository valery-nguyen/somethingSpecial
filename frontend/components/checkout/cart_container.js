import { connect } from 'react-redux';

import Cart from './cart';
import { requestCartItems, clearCartItems, deleteCartItem, updateCartItem} from '../../actions/cart_actions';
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
    clearCartItems: () => dispatch(clearCartItems()),
    deleteCartItem: (itemId) => dispatch(deleteCartItem(itemId)),
    updateCartItem: (item) => dispatch(updateCartItem(item)),
  }
};

export default connect(mapStateToProps, mapDispatchToProps)(Cart);