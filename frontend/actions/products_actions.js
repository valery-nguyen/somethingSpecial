import * as APIUtil from '../util/api_util';

export const RECEIVE_ALL_PRODUCTS = 'RECEIVE_ALL_PRODUCTS';
export const RECEIVE_SEARCH_INDEX = 'RECEIVE_SEARCH_INDEX';
export const START_LOADING_ALL_PRODUCTS = 'START_LOADING_ALL_PRODUCTS';
export const START_LOADING_PRODUCT = 'START_LOADING_PRODUCT';
export const START_LOADING_CATEGORY = 'START_LOADING_CATEGORY';

const receiveAllProducts = products => ({
  type: RECEIVE_ALL_PRODUCTS,
  products
});

const receiveSearchIndex = products => ({
  type: RECEIVE_SEARCH_INDEX,
  products
});

const startLoadingAllProducts = () => ({
  type: START_LOADING_ALL_PRODUCTS
});

const startLoadingProduct = () => ({
  type: START_LOADING_PRODUCT
});

const startLoadingCategory = () => ({
  type: START_LOADING_CATEGORY
});

export const requestAllProducts = () => (dispatch) => {
  dispatch(startLoadingAllProducts());
  return APIUtil.fetchAllProducts()
    .then(products => dispatch(receiveAllProducts(products)));
}

//products received include related products
export const requestProduct = (productTitle) => (dispatch) => {
  dispatch(startLoadingProduct());
  return APIUtil.fetchProduct(productTitle)
    .then(products => dispatch(receiveAllProducts(products)));
}

export const requestSearchItems = () => (dispatch) => {
  return APIUtil.fetchSearchIndex()
    .then(products => dispatch(receiveSearchIndex(products)));
}

export const requestCategory = (categoryName) => (dispatch) => {
  dispatch(startLoadingCategory());
  return APIUtil.fetchCategoryProducts(categoryName)
    .then(products => dispatch(receiveAllProducts(products)));
}