import React from 'react';
import {
  Route,
  Switch,
  Redirect
} from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

import Header from './../components/header/header_container';
import Footer from './../components/footer/footer_container';
import SessionPanel from './session_form/session_panel_container';
import CartPanel from './checkout/cart_panel_container';
import Cart from './checkout/cart_container';
import ShipPanel from './session_form/ship_panel_container';
import ProductsIndex from './../components/products/products_index_container';
import ProductShow from './../components/products/product_show_container';
import ProductSearch from './../components/products/product_search_container';
import Category from './../components/category/category_container';
import OrderHistory from './../components/account/order_history_container';
import AccountInformations from './../components/account/account_informations_container';
import Wishes from './../components/wishes/wishes_container';
import ReviewForm from './../components/reviews/review_form_container';
import UnderConstruction from './../components/under_construction/under_construction';

const App = () => (
  <div>
    <Header />
    <Switch>
      <Route exact path="/products" component={ProductsIndex} />
      <Route exact path="/product/:productTitle" component={ProductShow} />
      <Route exact path="/checkout/cart" component={Cart} />
      <Route path="/search" component={ProductSearch} />
      <Route exact path="/category/:categoryName" component={Category} />
      <Route exact path="/orders" component={OrderHistory} />
      <ProtectedRoute exact path="/account" component={AccountInformations} />
      <ProtectedRoute exact path="/wishes" component={Wishes} />
      <ProtectedRoute exact path="/product/:productTitle/review" component={ReviewForm} />
      <Route exact path="/construction" component={UnderConstruction} />
      <Route exact path="/" component={ProductsIndex} />
      <Redirect from='/' to='/' />
    </Switch>
    <Footer />
    <SessionPanel />
    <CartPanel />
    <ShipPanel />
  </div>
);

export default App;
