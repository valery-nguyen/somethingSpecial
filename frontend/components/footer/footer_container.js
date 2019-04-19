import { connect } from 'react-redux';
import Footer from './footer';

const mapStateToProps = (state) => {
  const loading = state.ui.loading.indexLoading ||
    state.ui.loading.detailLoading || state.ui.loading.searchLoading ||
    state.ui.loading.categoryLoading;
  return {
    loading,
    cartLoading: state.ui.loading.cartLoading
  };
};

export default connect(
  mapStateToProps
)(Footer);