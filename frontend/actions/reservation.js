import {
    getReservation,
    postReservation
} from "../utils/reservation"

export const RECEIVE_RESERVATIONS = "RECEIVE_RESERVATIONS"
export const RECEIVE_RESERVATION = "RECEIVE_RESERVATION"
export const REMOVE_RESERVATION = "REMOVE_RESERVATION"

export const fetchReservations = () => (dispatch) => (
    getReservation
)
