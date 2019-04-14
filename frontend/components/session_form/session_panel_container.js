import { connect } from 'react-redux';

import SessionPanel from './session_panel';
const mapStateToProps = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.currentUserId]
  };
};


export default connect(mapStateToProps)(SessionPanel);