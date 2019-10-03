import React from 'react';
// import Home from './home/home';
import Modal from './modal/modal'
import UserDropdown from './dropdown/user_dropdown'
import { Route, Link, Switch, HashRouter } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../utils/route_utils';
//containers
import SignupContainer from './session/signup_container';
import LoginContainer from './session/login_container';
import NavBarContainer from './nav_bar/nav_bar_container'
import RestaurantShowContainer from './restaurant/restaurant_show_container'

export default () => (
    <div>
        <Modal />
        <header>
            <NavBarContainer />
        </header>
        <hr></hr>
        <Switch>
        {/* <Route exact path="/" component={Home} /> */}
        <Route path="/restaurants/:restaurantId" component={RestaurantShowContainer} />
        {/* <Route exact path='/r/:id' component={RestaurantContainer}> */}
        </Switch>
    </div>
);
