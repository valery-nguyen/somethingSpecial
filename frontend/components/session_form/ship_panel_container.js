import { connect } from 'react-redux';

import ShipPanel from './ship_panel';

const mapStateToProps = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.currentUserId]
  };
};

export default connect(mapStateToProps)(ShipPanel);