import { combineReducers } from 'redux';

import products_reducer from './products_reducer';

export default combineReducers({
  products: products_reducer,
});