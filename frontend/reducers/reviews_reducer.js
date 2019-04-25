import {
  RECEIVE_REVIEWS
} from '../actions/reviews_actions';

const reviewsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_REVIEWS:
      return action.reviews;
    default:
      return state;
  }
};

export default reviewsReducer;