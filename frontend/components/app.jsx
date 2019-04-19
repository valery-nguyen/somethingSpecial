import React from 'react';
import {
  Route,
  Switch,
  Redirect
} from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

// import Header from './../components/header/header_container';
import Footer from './../components/footer/footer_container';
import SessionPanel from './session_form/session_panel_container';
import CartPanel from './checkout/cart_panel_container';
import Cart from './checkout/cart_container';
import ShipPanel from './session_form/ship_panel_container';
import ProductsIndexContainer from './../components/products/products_index_container';
import ProductShowContainer from './../components/products/product_show_container';
// import ProductSearchContainer from './../components/products/product_search_container';

const App = () => (
  <div>
    {/* <Header /> */}
    <Switch>
      <Route exact path="/products" component={ProductsIndexContainer} />
      <Route exact path="/product/:productTitle" component={ProductShowContainer} />
      <Route exact path="/checkout/cart" component={Cart} />
      {/* <Route path="/search" component={ProductSearchContainer} /> */}
      <Route exact path="/" component={ProductsIndexContainer} />
      <Redirect from='/' to='/' />
    </Switch>
    <Footer />
    <SessionPanel />
    <CartPanel />
    <ShipPanel />
  </div>
);

export default App;
