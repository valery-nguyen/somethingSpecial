import { connect } from 'react-redux';
import { selectProduct, selectRelatedProducts } from '../../reducers/selectors';
import { addWish, deleteWish } from '../../actions/wishes_actions';
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
  };
};

const mapDispatchToProps = dispatch => ({
  addWish: (productId) => dispatch(addWish(productId)),
  deleteWish: (productId) => dispatch(deleteWish(productId))
});

export default connect(mapStateToProps, mapDispatchToProps)(AlsoLike);