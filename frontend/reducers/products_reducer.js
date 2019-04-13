import {
  RECEIVE_ALL_PRODUCTS
} from '../actions/products_actions';
import merge from 'lodash/merge';

const productsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_PRODUCTS:
      return merge({}, state, action.products);
    default:
      return state;
  }
};

export default productsReducer;