import { connect } from 'react-redux';
import Header from './header';

const mapStateToProps = (state) => {
  const loading = state.ui.loading.indexLoading ||
    state.ui.loading.detailLoading;
  const users = state.entities.users;
  const session = state.session;
  return {
    loading,
    currentUser: users[session.currentUserId]
  };
};

export default connect(
  mapStateToProps
)(Header);