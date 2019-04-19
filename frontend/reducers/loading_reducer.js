import {
  RECEIVE_ALL_PRODUCTS,
  START_LOADING_ALL_PRODUCTS,
  START_LOADING_PRODUCT,
} from '../actions/products_actions';

import {
  RECEIVE_CART_ITEMS,
  START_LOADING_CART_ITEMS
} from '../actions/cart_actions';

import {
  RECEIVE_SEARCH_ITEMS,
  START_LOADING_SEARCH_ITEMS
} from '../actions/search_actions';

const initialState = {
  indexLoading: false,
  detailLoading: false,
  cartLoading: false,
  searchLoading: false
};

const loadingReducer = (state = initialState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_PRODUCTS:
      return Object.assign({}, state, { indexLoading: false, detailLoading: false });
    case START_LOADING_ALL_PRODUCTS:
      return Object.assign({}, state, { indexLoading: true });
    case START_LOADING_PRODUCT:
      return Object.assign({}, state, { detailLoading: true });
    case RECEIVE_CART_ITEMS:
      return Object.assign({}, state, { cartLoading: false });
    case START_LOADING_CART_ITEMS:
      return Object.assign({}, state, { cartLoading: true });
    case RECEIVE_SEARCH_ITEMS:
      return Object.assign({}, state, { searchLoading: false });
    case START_LOADING_SEARCH_ITEMS:
      return Object.assign({}, state, { searchLoading: true });
    default:
      return state;
  }
};

export default loadingReducer;