import {
  RECEIVE_CART_ITEMS,
  RECEIVE_CART_ERRORS
} from '../actions/cart_actions';

export default (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_CART_ERRORS:
      return action.errors || [];
    case RECEIVE_CART_ITEMS:
      return [];
    default:
      return state;
  }
};