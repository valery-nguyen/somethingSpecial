import { connect } from 'react-redux';

import ProductShow from './product_show';
import { selectProduct, selectImages } from '../../reducers/selectors';
import { requestProduct } from '../../actions/products_actions';

const mapStateToProps = (state, ownProps) => {
  const products = state.entities.products;
  const productTitle = ownProps.match.params.productTitle;
  const product = selectProduct(state, productTitle);
  const images = selectImages(state, productTitle);
  const loading = state.ui.loading.detailLoading;
  
  return {
    products,
    productTitle,
    product,
    images,
    loading,
  };
};

const mapDispatchToProps = dispatch => { 
  return { requestProduct: productTitle => dispatch(requestProduct(productTitle)) }
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ProductShow);