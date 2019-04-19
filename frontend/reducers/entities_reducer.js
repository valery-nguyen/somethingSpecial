import { combineReducers } from 'redux';

import products from './products_reducer';
import cartItems from './cart_items_reducer';
import searches from './searches_reducer';
import users from './users_reducer';

export default combineReducers({
  products,
  cartItems,
  searches,
  users
});