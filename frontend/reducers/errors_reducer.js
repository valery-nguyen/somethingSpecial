import { combineReducers } from 'redux';

import session from './session_errors_reducer';
import user from './user_errors_reducer';
import cart from './cart_errors_reducer';

export default combineReducers({
  session,
  user,
  cart
});