import * as ReservationDateAPIUtils from "../utils/reservation_date"

export const RECEIVE_RESERVATION_DATE = "RECEIVE_RESERVATION_DATE";
export const RECEIVE_RESERVATION_DATES = "RECEIVE_RESERVATION_DATES";

export const receiveReservationDates = reservationDates => {
    return ({
        type: RECEIVE_RESERVATION_DATES,
        reservationDates
    })
}

export const receiveReservationDate = payload => {
    return ({
        type: RECEIVE_RESERVATION_DATE,
        payload
    })
}



export const requestAllReservationDates = () => dispatch => (
    ReservationDateAPIUtils.getReservationDates()
        .then(reservationDates => {
            dispatch(receiveReservationDates(reservationDates))
        })
)

export const requestReservationDate = id => dispatch => (
    ReservationDateAPIUtils.getReservationDate(id)
        .then(reservationDate => {
            dispatch(receiveReservationDate(reservationDate))
        })
)