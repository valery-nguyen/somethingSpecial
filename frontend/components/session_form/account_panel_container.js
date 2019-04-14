import { connect } from 'react-redux';

import { logout } from '../../actions/session_actions';
import AccountPanel from './account_panel';

const mapStateToProps = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.currentUserId]
  };
};

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(AccountPanel);