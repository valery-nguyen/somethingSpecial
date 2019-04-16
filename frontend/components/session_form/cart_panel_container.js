import { connect } from 'react-redux';

import CartPanel from './cart_panel';

const mapStateToProps = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.currentUserId]
  };
};

export default connect(mapStateToProps)(CartPanel);