import { connect } from 'react-redux';

import Category from './category';
import { requestCategory } from '../../actions/products_actions';
import { addWish, deleteWish, requestWishes } from '../../actions/wishes_actions';
import { selectCategoryProducts, selectWishes } from '../../reducers/selectors';

const mapStateToProps = (state, ownProps) => {
  const session = state.session;
  const users = state.entities.users;
  const currentUser = users[session.currentUserId];
  const categoryName = ownProps.location.pathname.slice(10);
  const categoryProducts = selectCategoryProducts(state.entities.products, categoryName);
  const loading = state.ui.loading.categoryLoading || state.ui.loading.cartLoading;
  const wishes = selectWishes(state.entities.wishes);
  return {
    currentUser,
    categoryProducts,
    categoryName,
    wishes,
    loading
  };
};

const mapDispatchToProps = dispatch => ({
  requestCategory: (categoryName) => dispatch(requestCategory(categoryName)),
  requestWishes: () => dispatch(requestWishes()),
  addWish: (productId) => dispatch(addWish(productId)),
  deleteWish: (productId) => dispatch(deleteWish(productId))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Category);