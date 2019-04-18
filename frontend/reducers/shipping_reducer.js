import {
  SET_SHIPPING
} from '../actions/session_actions';

export default (state = { shippingCost: 0, baseCurrency: 1}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case SET_SHIPPING:
      return action.options;
    default:
      return state;
  }
};