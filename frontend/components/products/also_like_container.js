import { connect } from 'react-redux';
import { selectProduct, selectRelatedProducts } from '../../reducers/selectors';
import AlsoLike from './also_like';

const mapStateToProps = (state, ownProps) => {
  const products = state.entities.products;
  const productTitle = ownProps.product.title;
  const product = selectProduct(state, productTitle);
  const relatedProducts = selectRelatedProducts(state, productTitle);
  return {
    products,
    product,
    relatedProducts,
  }
};

export default connect(
  mapStateToProps)(AlsoLike);