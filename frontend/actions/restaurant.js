import { getRestaurant, getRestaurants } from "../utils/restaurant"

export const RECEIVE_RESTAURANT = "RECEIVE_RESTAURANT"
export const RECEIVE_RESTAURANTS = "RECEIVE_RESTAURANTS"

export const receiveRestaurants = restaurants =>
{
    // debugger
    return ({type: RECEIVE_RESTAURANTS,
    restaurants})
}

export const receiveRestaurant = payload => ({
    type: RECEIVE_RESTAURANT,
    payload
})

export const requestAllRestaurants = () => dispatch => (
    getRestaurants()
        .then(restaurants => { dispatch(receiveRestaurants(restaurants))})
)

export const requestRestaurant = id => dispatch => (
    getRestaurant(id)
        .then(payload => {dispatch(receiveRestaurant(payload))})
)