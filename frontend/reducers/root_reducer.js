import { combineReducers } from 'redux';

import entities from './entities_reducer';
import ui from './ui_reducer';
import errors from './errors_reducer';
import session from './session_reducer';

export default combineReducers({
  entities,
  ui,
  errors,
  session
});