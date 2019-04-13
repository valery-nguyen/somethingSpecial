import { combineReducers } from 'redux';

import products from './products_reducer';
import users from './users_reducer';

export default combineReducers({
  products,
  users
});