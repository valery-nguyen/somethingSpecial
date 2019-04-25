import * as APIUtil from '../util/api_util';

export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS';
export const START_LOADING_REVIEWS = 'START_LOADING_REVIEWS';
export const RECEIVE_REVIEW_ERRORS = 'RECEIVE_REVIEW_ERRORS';

const receiveReviews = reviews => ({
  type: RECEIVE_REVIEWS,
  reviews
});

const startLoadingReviews = () => ({
  type: START_LOADING_REVIEWS
});

const receiveErrors = errors => ({
  type: RECEIVE_REVIEW_ERRORS,
  errors
});

export const fetchReviews = (product_id) => (dispatch) => {
  dispatch(startLoadingReviews());
  return APIUtil.fetchReviews(product_id)
    .then(reviews => dispatch(receiveReviews(reviews)));
};

export const createReview = (review) => (dispatch) => {
  dispatch(startLoadingReviews());
  return APIUtil.createReview(review)
    .then(reviews => (dispatch(receiveReviews(reviews))
    ), err => (
      dispatch(receiveErrors(err.responseJSON))
    ));
};