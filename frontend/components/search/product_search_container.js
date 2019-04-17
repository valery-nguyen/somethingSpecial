import { connect } from 'react-redux';
import { selectAllProducts } from '../../reducers/selectors';
import { requestSearchItems } from '../../actions/products_actions';
import ProductSearch from './product_search';

const mapStateToProps = (state) => {
  const products = selectAllProducts(state);
  return {
    products
  }
};

const mapDispatchToProps = dispatch => {
  return {
    requestSearchItems: () => dispatch(requestSearchItems()),
  }
};

export default connect(mapStateToProps, mapDispatchToProps)(ProductSearch);