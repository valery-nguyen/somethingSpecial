import React from 'react';
import {
  Route,
  Switch
} from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

import Header from './../components/header/header_container';
import Footer from './../components/footer/footer_container';
import SessionPanel from './session_form/session_panel_container';
import ProductsIndexContainer from './../components/products/products_index_container';
import ProductShowContainer from './../components/products/product_show_container';

const App = () => (
  <div>
    <SessionPanel />
    <Header />
    <Switch>
      <Route exact path="/api/products" component={ProductsIndexContainer} />
      <Route exact path="/api/products/:productTitle" component={ProductShowContainer} />
      <Route path="/" component={ProductsIndexContainer} />
    </Switch>
    <Footer />
    
  </div>
);

export default App;
