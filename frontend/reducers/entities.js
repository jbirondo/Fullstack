import { combineReducers } from 'redux';

import usersReducer from './users_reducer';
import restaurantReducer from './restaurant'

const entitiesReducer = combineReducers({
    users: usersReducer,
    restaurant: restaurantReducer
});

export default entitiesReducer;