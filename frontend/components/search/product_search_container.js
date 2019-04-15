import { connect } from 'react-redux';
import { selectAllProducts } from '../../reducers/selectors';
import ProductSearch from './product_search';

const mapStateToProps = (state) => {
  const products = selectAllProducts(state);
  return {
    products
  }
};

export default connect(mapStateToProps)(ProductSearch);