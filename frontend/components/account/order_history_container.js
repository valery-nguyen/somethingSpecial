import { connect } from 'react-redux';
import OrderHistory from './order_history';

const mapStateToProps = (state) => {
  const users = state.entities.users;
  const session = state.session;
  return {
    currentUser: users[session.currentUserId]
  };
};

export default connect(mapStateToProps)(OrderHistory);