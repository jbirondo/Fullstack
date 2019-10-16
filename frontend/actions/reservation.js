import * as ReserverationAPIUtils from "../utils/reservation"

// export const RECEIVE_RESERVATIONS = "RECEIVE_RESERVATIONS"
export const RECEIVE_RESERVATION = "RECEIVE_RESERVATION"
export const REMOVE_RESERVATION = "REMOVE_RESERVATION"

const receiveReservation = (reservation) => ({
    reservation: reservation,
    type: RECEIVE_RESERVATION
})

const removeReservation = (reservation) => ({
    reservationId: reservation.id,
    type: REMOVE_RESERVATION
})

export const getReservation = (id) => (dispatch) => (
    ReserverationAPIUtils.getReservation(id)
    .then( reservation => 
        dispatch(receiveReservation(reservation)
    ))
)

export const postReservation = (reservation) => (dispatch )=> (
    ReserverationAPIUtils.postReservation(reservation)
    .then( reservation => 
        dispatch(receiveReservation(reservation)
    )) 
)

export const updateReservation = (reservation) => (dispatch) => (
    ReserverationAPIUtils.updateReservation(reservation)
    .then ( reservation => 
        dispatch(receiveReservation(reservation)
    ))
)

export const deleteReservation = (id) => (dispatch) => (
    ReserverationAPIUtils.deleteReservation(id)
    .then( reservation => 
        dispatch(removeReservation(reservation)
    ))
)
