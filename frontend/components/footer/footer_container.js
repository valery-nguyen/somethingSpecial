import { connect } from 'react-redux';
import Footer from './footer';

const mapStateToProps = (state) => {
  const loading = state.ui.loading.searchLoading;
  const loadingNoSpinner = state.ui.loading.indexLoading || state.ui.loading.detailLoading ||
  state.ui.loading.categoryLoading || state.ui.loading.cartLoading || state.ui.loading.wishesLoading;
  return {
    loading,
    loadingNoSpinner
  };
};

export default connect(
  mapStateToProps
)(Footer);