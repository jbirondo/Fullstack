// import React from 'react';
// import SignupContainer from './session/signup_container';
// import LoginContainer from './session/login_container';
// import Home from './home/home';
// import { Route } from 'react-router-dom';
// import { AuthRoute, ProtectedRoute } from '../utils/route_util';

// export default () => (
//     <div>
//         <Route path="/" component={NavBarContainer} />
//         <Route exact path="/" component={Home} />
//         <AuthRoute path="/signup" component={SignupContainer} />
//         <AuthRoute path="/login" component={LoginContainer} />
//     </div>
// );

import React from 'react';
import { Provider } from 'react-redux';
import {
    Route,
    Redirect,
    Switch,
    Link,
    HashRouter
} from 'react-router-dom';

import NavBar from './nav_bar/nav_bar_container'
// import SignUpFormContainer from './session_form/signup_form_container';
import { AuthRoute, ProtectedRoute } from '../utils/route_utils';

const App = () => (
    <div>
        <header>
            <Link to="/" className="header-link">
                <h1>Open Table</h1>
            </Link>
            <NavBar />
        </header>
        {/* <Switch>
            <AuthRoute exact path="/login" component={LogInFormContainer} />
            <AuthRoute exact path="/signup" component={SignUpFormContainer} />
            <ProtectedRoute exact path="/benches/new" component={BenchFormContainer} />
            <Route path="/benches/:benchId" component={BenchShowContainer} />
            <Route exact path="/" component={SearchContainer} />
        </Switch> */}
    </div>
);

export default App;