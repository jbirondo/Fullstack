import {
    RECEIVE_RESERVATION,
    REMOVE_RESERVATION
} from "../actions/reservation"
import merge from "lodash/merge"

const ReservationReducer = (oldState = {}, action) => {
    Object.freeze(oldState)
    let newState;
    switch(action.type){
        case RECEIVE_RESERVATION:
            newState = merge({}, oldState, { [action.reservation.id]: action.reservation })
            return newState
        case REMOVE_RESERVATION:
            newState = merge({}, oldState)
            delete newState[action.reservationId]
            return newState
        default:
            return oldState
    }
}

export default ReservationReducer