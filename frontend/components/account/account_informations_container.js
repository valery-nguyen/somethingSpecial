import { connect } from 'react-redux';
import AccountInformations from './account_informations';

const mapStateToProps = (state) => {
  const users = state.entities.users;
  const session = state.session;
  return {
    currentUser: users[session.currentUserId]
  };
};

export default connect(mapStateToProps)(AccountInformations);