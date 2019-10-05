import {
    getReservation,
    postReservation,
    updateReservation,
    deleteReservation
} from "../utils/reservation"

// export const RECEIVE_RESERVATIONS = "RECEIVE_RESERVATIONS"
export const RECEIVE_RESERVATION = "RECEIVE_RESERVATION"
export const REMOVE_RESERVATION = "REMOVE_RESERVATION"

const receiveReservation = (reservation) => ({
    reservation: reservation,
    type: RECEIVE_RESERVATION
})

const removeReservation = (reservation) => ({
    reservation: reservation,
    type: REMOVE_RESERVATION
})

export const getReservation = (id) => (dispatch) => (
    getReservation(id)
    .then( reservation => 
        dispatch(receiveReservation(reservation)
    ))
)

export const postReservation = (reservation) => (dispatch )=> (
    postReservation(reservation)
    .then( reservation => 
        dispatch(receiveReservation(reservation)
    )) 
)

export const updateReservation = (reservation) => (dispatch) => (
    updateReservation(reservation)
    .then ( reservation => 
        dispatch(receiveReservation(reservation)
    ))
)

export const deleteReservation = (id) => (dispatch) => (
    deleteReservation(id)
    .then( reservation => 
        dispatch(removeReservation(reservation)
    ))
)
