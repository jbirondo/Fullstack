import merge from "lodash/merge";
import { RECEIVE_RESERVATION_DATE, 
    RECEIVE_RESERVATION_DATES, 
    CREATE_RESERVATION_DATE } from "../actions/reservation_date"

const reservationDateReducer = (state = {}, action) => {
  Object.freeze(state);
  let reservationDate;
  switch (action.type) {
    case RECEIVE_RESERVATION_DATES:
      return merge({}, state, action.reservationDates);
    case RECEIVE_RESERVATION_DATE:
      reservationDate = action.payload;
      return Object.assign({}, state, { [reservationDate.id]: reservationDate });
    // case CREATE_RESERVATION_DATE:
    default:
      return state;
  }
};

export default reservationDateReducer;