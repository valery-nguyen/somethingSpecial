import { connect } from 'react-redux';

import ProductsIndex from './products_index';
import { selectAllProducts } from '../../reducers/selectors';
import { requestAllProducts } from '../../actions/products_actions';

const mapStateToProps = (state, ownProps) => {
  const loading = state.ui.loading.indexLoading || state.ui.loading.cartLoading;
  return {
  products: selectAllProducts(state),
  loading
  };
}

const mapDispatchToProps = dispatch => ({
  requestAllProducts: () => dispatch(requestAllProducts())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProductsIndex);