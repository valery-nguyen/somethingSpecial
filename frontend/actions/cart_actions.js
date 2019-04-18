import * as APIUtil from '../util/api_util';

export const RECEIVE_CART_ITEMS = 'RECEIVE_CART_ITEMS';
export const START_LOADING_CART_ITEMS = 'START_LOADING_CART_ITEMS';
export const RECEIVE_CART_ERRORS = 'RECEIVE_CART_ERRORS';
export const CLEAR_CART = 'CLEAR_CART';

const receiveCartItems = cartItems => ({
  type: RECEIVE_CART_ITEMS,
  cartItems
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

export const deleteCartItem = (itemId) => (dispatch) => {
  dispatch(startLoadingCartItems());
  return APIUtil.removeCartItem(itemId)
    .then(cartItems => (dispatch(receiveCartItems(cartItems))
    ), err => (
      dispatch(receiveErrors(err.responseJSON))
    ));
}

export const updateCartItem = (item) => (dispatch) => {
  dispatch(startLoadingCartItems());
  return APIUtil.modifyCartItem(item)
    .then(cartItems => (dispatch(receiveCartItems(cartItems))
    ), err => (
      dispatch(receiveErrors(err.responseJSON))
    ));
}