import { connect } from 'react-redux';
import TitleNav from './title_nav';

const mapStateToProps = ({ session, entities: { users, products, cartItems }}) => {
  return {
    currentUser: users[session.currentUserId],
    products,
    numCartItems: Object.keys(cartItems).length
  };
};

export default connect(
  mapStateToProps
)(TitleNav);