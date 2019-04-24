import * as APIUtil from '../util/api_util';

export const RECEIVE_WISHES = 'RECEIVE_WISHES';
export const START_LOADING_WISHES = 'START_LOADING_WISHES';

const receiveWishes = wishes => ({
  type: RECEIVE_WISHES,
  wishes
});

const startLoadingWishes = () => ({
  type: START_LOADING_WISHES
});

export const requestWishes = () => (dispatch) => {
  dispatch(startLoadingWishes());
  return APIUtil.fetchWishes()
    .then(wishes => dispatch(receiveWishes(wishes)));
}

export const addWish = (productId) => (dispatch) => {
  dispatch(startLoadingWishes());
  return APIUtil.addWish(productId)
    .then(wishes => dispatch(receiveWishes(wishes)));
}

export const deleteWish = (productId) => (dispatch) => {
  dispatch(startLoadingWishes());
  return APIUtil.deleteWish(productId)
    .then(wishes => dispatch(receiveWishes(wishes)));
}