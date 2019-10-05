import { combineReducers } from 'redux';

import usersReducer from './users_reducer'
import restaurantReducer from './restaurant'
import reservationReducer from './reservation'

const entitiesReducer = combineReducers({
    users: usersReducer,
    restaurant: restaurantReducer,
    reservation: reservationReducer
});

export default entitiesReducer;