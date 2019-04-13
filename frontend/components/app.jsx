import React from 'react';
import {
  Route,
  Switch
} from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

import Header from './../components/header/header_container';
import Footer from './../components/footer/footer_container';
import ProductsIndexContainer from './../components/products/products_index_container';
import ProductShowContainer from './../components/products/product_show_container';

import SignUpFormContainer from './session_form/signup_form_container';
import LogInFormContainer from './session_form/login_form_container';

const App = () => (
  <div>
    <Header />
    <Switch>
      <AuthRoute exact path="/login" component={LogInFormContainer} />
      <AuthRoute exact path="/signup" component={SignUpFormContainer} />
      <Route exact path="/api/products" component={ProductsIndexContainer} />
      <Route exact path="/api/products/:productTitle" component={ProductShowContainer} />
      
      <Route path="/" component={ProductsIndexContainer} />
    </Switch>
    <Footer />
  </div>
);

export default App;
