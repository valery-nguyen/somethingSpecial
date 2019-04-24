import {
  RECEIVE_ALL_PRODUCTS,
  START_LOADING_ALL_PRODUCTS,
  START_LOADING_PRODUCT,
  START_LOADING_CATEGORY
} from '../actions/products_actions';

import {
  RECEIVE_CART_ITEMS,
  START_LOADING_CART_ITEMS
} from '../actions/cart_actions';

import {
  RECEIVE_SEARCH_ITEMS,
  START_LOADING_SEARCH_ITEMS
} from '../actions/search_actions';

import { 
  RECEIVE_WISHES,
  START_LOADING_WISHES
} from '../actions/wishes_actions';

const initialState = {
  indexLoading: false,
  detailLoading: false,
  cartLoading: false,
  searchLoading: false,
  categoryLoading: false,
  wishesLoading: false
};

const loadingReducer = (state = initialState, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_PRODUCTS:
      return Object.assign({}, state, { indexLoading: false, 
        detailLoading: false, categoryLoading: false });
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
    case START_LOADING_CATEGORY:
      return Object.assign({}, state, { categoryLoading: true });
    case RECEIVE_WISHES:
      return Object.assign({}, state, { wishesLoading: false });
    case START_LOADING_WISHES:
      return Object.assign({}, state, { wishesLoading: true });
    default:
      return state;
  }
};

export default loadingReducer;