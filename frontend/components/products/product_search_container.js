import { connect } from 'react-redux';

import ProductSearch from './product_search';
import { requestSearch } from '../../actions/search_actions';

const mapStateToProps = (state, ownProps) => {
  const loading = state.ui.loading.searchLoading || state.ui.loading.cartLoading;
  return {
    searchProducts: Object.values(state.entities.searches),
    loading
  };
}

const mapDispatchToProps = dispatch => ({
  requestSearch: (searchQuery) => dispatch(requestSearch(searchQuery)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProductSearch);