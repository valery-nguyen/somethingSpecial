import { connect } from 'react-redux';

import Wishes from './wishes';

import { requestWishes, addWish, deleteWish } from '../../actions/wishes_actions';
import { selectWishes } from '../../reducers/selectors';
import { addCartItem } from '../../actions/cart_actions';

const mapStateToProps = ({ session, entities: { users, wishes }, ui: { loading } }) => {
  const loadingState = loading.wishesLoading;
  return {
    currentUser: users[session.currentUserId],
    wishes: selectWishes(wishes),
    loading: loadingState,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    requestWishes: () => dispatch(requestWishes()),
    addWish: (productId) => dispatch(addWish(productId)),
    deleteWish: (productId) => dispatch(deleteWish(productId)),
    addCartItem: (cartItem) => dispatch(addCartItem(cartItem))
  }
};

export default connect(mapStateToProps, mapDispatchToProps)(Wishes);