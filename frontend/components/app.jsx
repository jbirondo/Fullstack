import React from 'react';
import SignupContainer from './session/signup_container';
import LoginContainer from './session/login_container';
// import Home from './home/home';
import Modal from './modal/modal'
import UserDropdown from './dropdown/user_dropdown'
import NavBarContainer from './nav_bar/nav_bar_container'
import { Route, Link } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../utils/route_utils';

export default () => (
    <div>
        <Modal />
        {/* <UserDropdown /> */}
        <header>
            <NavBarContainer />
        </header>
        {/* <Route exact path="/" component={Home} /> */}
        {/* <Route exact path='/r/:id' component={RestaurantContainer}> */}
    </div>
);
