import { connect } from 'react-redux';

import Category from './category';
import { requestCategory } from '../../actions/products_actions';
import { selectCategoryProducts } from '../../reducers/selectors';

const mapStateToProps = (state, ownProps) => {
  const categoryName = ownProps.location.pathname.slice(10);
  const categoryProducts = selectCategoryProducts(state.entities.products, categoryName);
  const loading = state.ui.loading.categoryLoading || state.ui.loading.cartLoading;
  
  return {
    categoryProducts,
    categoryName,
    loading
  };
}

const mapDispatchToProps = dispatch => ({
  requestCategory: (categoryName) => dispatch(requestCategory(categoryName)),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Category);