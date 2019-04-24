import {
  RECEIVE_WISHES
} from '../actions/wishes_actions';

const wishesReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_WISHES:
      return action.wishes;
    default:
      return state;
  }
};

export default wishesReducer;