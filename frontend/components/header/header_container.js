import { connect } from 'react-redux';
import Header from './header';

const mapStateToProps = (state) => {
  const loading = state.ui.loading.indexLoading ||
    state.ui.loading.detailLoading;
  return {
    loading
  };
};

export default connect(
  mapStateToProps
)(Header);