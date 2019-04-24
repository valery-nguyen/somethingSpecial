import { connect } from 'react-redux';

import ProductSearch from './product_search';
import { requestSearch } from '../../actions/search_actions';
import { addWish, deleteWish, requestWishes } from '../../actions/wishes_actions';
import { selectWishes } from '../../reducers/selectors';

const mapStateToProps = (state, ownProps) => {
  const session = state.session;
  const users = state.entities.users;
  const currentUser = users[session.currentUserId];
  const loading = state.ui.loading.searchLoading || state.ui.loading.cartLoading;
  const urlParams = new URLSearchParams(ownProps.location.search);
  const searchQuery = urlParams.get('q');
  const wishes = selectWishes(state.entities.wishes);
  return {
    currentUser,
    searchProducts: Object.values(state.entities.searches),
    searchQuery,
    wishes,
    loading
  };
};

const mapDispatchToProps = dispatch => ({
  requestSearch: (searchQuery) => dispatch(requestSearch(searchQuery)),
  requestWishes: () => dispatch(requestWishes()),
  addWish: (productId) => dispatch(addWish(productId)),
  deleteWish: (productId) => dispatch(deleteWish(productId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProductSearch);