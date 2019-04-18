import { combineReducers } from 'redux';
import loading from './loading_reducer';
import shipping from './shipping_reducer';

export default combineReducers({
  loading,
  shipping
});