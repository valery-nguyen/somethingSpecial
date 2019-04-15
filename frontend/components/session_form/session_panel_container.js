import { connect } from 'react-redux';
import { login } from '../../actions/session_actions';

import SessionPanel from './session_panel';
const mapStateToProps = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.currentUserId]
  };
};

const mapDispatchToProps = dispatch => ({
  login: (user) => dispatch(login(user)),
});


export default connect(mapStateToProps, mapDispatchToProps)(SessionPanel);