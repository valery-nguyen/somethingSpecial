import * as APIUtil from '../util/api_util';

export const RECEIVE_ALL_PRODUCTS = 'RECEIVE_ALL_PRODUCTS';
export const START_LOADING_ALL_PRODUCTS = 'START_LOADING_ALL_PRODUCTS';
export const START_LOADING_PRODUCT = 'START_LOADING_PRODUCT';

const receiveAllProducts = products => ({
  type: RECEIVE_ALL_PRODUCTS,
  products
});

const startLoadingAllProducts = () => ({
  type: START_LOADING_ALL_PRODUCTS
});

const startLoadingProduct = () => ({
  type: START_LOADING_PRODUCT
});

export const requestAllProducts = () => (dispatch) => {
  dispatch(startLoadingAllProducts());
  return APIUtil.fetchAllProducts()
    .then(products => { dispatch(receiveAllProducts(products)) });
}

//products received include related products
export const requestProduct = (productTitle) => (dispatch) => {
  dispatch(startLoadingProduct());
  return APIUtil.fetchProduct(productTitle)
    .then(products => { dispatch(receiveAllProducts(products)) });
}