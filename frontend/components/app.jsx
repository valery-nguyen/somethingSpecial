import React from 'react';
import { Provider } from 'react-redux';
import {
  Route,
  Redirect,
  Switch,
  Link,
  HashRouter
} from 'react-router-dom';

import Header from './../components/header/header_container';
import Footer from './../components/footer/footer_container';
import ProductsIndexContainer from './../components/products/products_index_container';
import ProductShowContainer from './../components/products/product_show_container';

const App = () => (
  <div>
    <Header />
    <Switch>
      <Route exact path="/api/products/:productTitle" component={ProductShowContainer} />
      <Route path="/api/products" component={ProductsIndexContainer} />
    </Switch>
    <Footer />
  </div>
);

export default App;
