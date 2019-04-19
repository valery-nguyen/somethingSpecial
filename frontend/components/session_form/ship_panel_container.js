import { connect } from 'react-redux';
import { updateShippingCosts } from '../../actions/session_actions';

import ShipPanel from './ship_panel';

const mapStateToProps = ({ session, entities: { users } }) => {
  return {
    currentUser: users[session.currentUserId]
  };
};

const mapDispatchToProps = dispatch => ({
  updateShippingCosts: (shippingOptions) => dispatch(updateShippingCosts(shippingOptions)),
});

export default connect(mapStateToProps, mapDispatchToProps)(ShipPanel);