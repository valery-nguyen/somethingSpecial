import React from 'react';
import ReactDOM from 'react-dom';

import Root from './components/root';
import configureStore from './store/store';
import { requestProduct, requestAllProducts } from './actions/products_actions';


document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore();
  const root = document.getElementById('root');

  ReactDOM.render(<Root store={store} />, root);

  window.store = store;
  window.requestProduct = requestProduct;
  window.requestAllProducts = requestAllProducts;
});