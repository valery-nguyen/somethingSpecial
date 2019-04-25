import {
  RECEIVE_REVIEWS,
  RECEIVE_REVIEW_ERRORS
} from '../actions/reviews_actions';

export default (state = [], action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_REVIEW_ERRORS:
      return action.errors || [];
    case RECEIVE_REVIEWS:
      return [];
    default:
      return state;
  }
};