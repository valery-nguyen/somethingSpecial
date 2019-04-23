import { connect } from 'react-redux';

import AccountInformations from './account_informations';
import { requestUser, updateUser } from '../../actions/session_actions';

const mapStateToProps = (state) => {
  const users = state.entities.users;
  const session = state.session;
  return {
    user: users[session.currentUserId],
    errors: state.errors.user
  };
};

const mapDispatchToProps = dispatch => ({
  requestUser: () => dispatch(requestUser()),
  updateUser: (user) => dispatch(updateUser(user))
});

export default connect(mapStateToProps, mapDispatchToProps)(AccountInformations);