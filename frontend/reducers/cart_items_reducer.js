import {
  RECEIVE_CART_ITEMS,
  CLEAR_CART
} from '../actions/cart_actions';
import merge from 'lodash/merge';

const cartItemsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CART_ITEMS:
      return action.cartItems;
    case CLEAR_CART:
      return {};
    default:
      return state;
  }
};

export default cartItemsReducer;