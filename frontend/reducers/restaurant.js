import { RECEIVE_RESTAURANT, RECEIVE_RESTAURANTS } from "../actions/restaurant"
import merge from "lodash/merge"

const restaurantReducer = (state = {}, action) => {
    // debugger
    Object.freeze(state)
    let restaurant;
    switch (action.type) {
        case RECEIVE_RESTAURANTS:
            // debugger
            // const restaurantArray = Object.keys(action.restaurants).map( key => action.restaurants[key])
            // console.log(restaurantArray)
            return merge({}, state, action.restaurants)
        case RECEIVE_RESTAURANT:
            restaurant = action.payload;
            return Object.assign({}, state, { [restaurant.id]: restaurant})
        default:
            return state;
    }
}

export default restaurantReducer