import { connect } from 'react-redux'
import { postReservation } from "../../actions/reservation"
import ReservationCreate from "./reservation_create";

const mapStateToProps = state => {
    return {
        testing: 0
    }
}

const mapDispatchToProps = dispatch => {
    // debugger
    return {
        createReservation: (reservation) => dispatch(postReservation(reservation))
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(ReservationCreate)