import * as APIUtil from '../util/api_util';

export const RECEIVE_SEARCH_ITEMS = 'RECEIVE_SEARCH_ITEMS';
export const START_LOADING_SEARCH_ITEMS = 'START_LOADING_SEARCH_ITEMS';


const receiveSearchProducts = searches => ({
  type: RECEIVE_SEARCH_ITEMS,
  searches
});

const startLoadingSearch = () => ({
  type: START_LOADING_SEARCH_ITEMS
});

export const requestSearch = (searchQuery) => (dispatch) => {
  dispatch(startLoadingSearch());
  return APIUtil.fetchSearchProducts(searchQuery)
    .then(products => dispatch(receiveSearchProducts(products)));
}