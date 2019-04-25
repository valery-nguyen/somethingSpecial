import { connect } from 'react-redux';

import Reviews from './reviews';
import { fetchReviews } from '../../actions/reviews_actions';
import { selectReviews } from '../../reducers/selectors';

const mapStateToProps = ({ session, entities: { users, reviews }, ui: { loading } }, ownProps) => {
  const loadingState = loading.reviewsLoading;
  return {
    currentUser: users[session.currentUserId],
    product: ownProps.product,
    reviews: selectReviews(reviews),
    loading: loadingState,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    fetchReviews: (productId) => dispatch(fetchReviews(productId)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Reviews);