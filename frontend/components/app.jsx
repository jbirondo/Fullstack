import React from 'react';
import SignupContainer from './session/signup_container';
import LoginContainer from './session/login_container';
// import Home from './home/home';
import Modal from './modal/modal'
import NavBarContainer from './nav_bar/nav_bar_container'
import { Route } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../utils/route_utils';

export default () => (
    <div>
        <Modal />
        <Route path="/" component={NavBarContainer} />
        {/* <AuthRoute path="/signup" component={SignupContainer} />
        <AuthRoute path="/login" component={LoginContainer} /> */}
        {/* switch */}
        {/* <Route exact path="/" component={Home} /> */}
        {/* <Route exact path='/r/:id' component={RestaurantContainer}> */}
    </div>
);
