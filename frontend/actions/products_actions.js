import * as APIUtil from '../util/api_util';

export const RECEIVE_ALL_PRODUCTS = 'RECEIVE_ALL_PRODUCTS';
export const RECEIVE_CART_ITEMS = 'RECEIVE_CART_ITEMS';
export const START_LOADING_ALL_PRODUCTS = 'START_LOADING_ALL_PRODUCTS';
export const START_LOADING_CART_ITEMS = 'START_LOADING_CART_ITEMS';
export const START_LOADING_PRODUCT = 'START_LOADING_PRODUCT';
export const RECEIVE_CART_ERRORS = 'RECEIVE_CART_ERRORS';
export const CLEAR_CART = 'CLEAR_CART';

const receiveAllProducts = products => ({
  type: RECEIVE_ALL_PRODUCTS,
  products
});

const receiveCartItems = cartItems => ({
  type: RECEIVE_CART_ITEMS,
  cartItems
});

const startLoadingAllProducts = () => ({
  type: START_LOADING_ALL_PRODUCTS
});

const startLoadingProduct = () => ({
  type: START_LOADING_PRODUCT
});

const startLoadingCartItems = () => ({
  type: START_LOADING_CART_ITEMS
});

const clearCartAction = () => ({
  type: CLEAR_CART
});

const receiveErrors = errors => ({
  type: RECEIVE_CART_ERRORS,
  errors
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

export const requestCartItems = () => (dispatch) => {
  dispatch(startLoadingCartItems());
  return APIUtil.fetchCartItems()
    .then(cartItems => dispatch(receiveCartItems(cartItems)));
}

export const addCartItem = (cartItem) => (dispatch) => {
  dispatch(startLoadingCartItems());
  return APIUtil.createCartItem(cartItem)
    .then(cartItems => ( dispatch(receiveCartItems(cartItems)) 
      ), err => (
        dispatch(receiveErrors(err.responseJSON))
      ));
}

export const clearCartItems = () => (dispatch) => {
  return dispatch(clearCartAction());
}