import {
  RECEIVE_SEARCH_ITEMS
} from '../actions/search_actions';

const productsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SEARCH_ITEMS:
      return action.searches;
    default:
      return state;
  }
};

export default productsReducer;