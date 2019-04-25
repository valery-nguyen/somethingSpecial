import { connect } from 'react-redux';

import ReviewForm from './review_form';
import { selectProduct, selectImages } from '../../reducers/selectors';
import { requestProduct } from '../../actions/products_actions';
import { createReview } from '../../actions/reviews_actions';

const mapStateToProps = (state, ownProps) => {
  const productTitle = ownProps.match.params.productTitle;
  const product = selectProduct(state, productTitle);
  const images = selectImages(state, productTitle);
  const session = state.session;
  const users = state.entities.users;
  const currentUser = users[session.currentUserId];
  const errors = state.errors.review;
  return {
    currentUser,
    product,
    productTitle,
    images,
    errors
  };
};

const mapDispatchToProps = dispatch => {
  return {
    requestProduct: productTitle => dispatch(requestProduct(productTitle)),
    createReview: (review) => dispatch(createReview(review))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(ReviewForm);