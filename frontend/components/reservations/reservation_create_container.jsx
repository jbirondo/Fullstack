import { connect } from 'react-redux'
import { postReservation } from "../../actions/reservation"
import ReservationCreate from "./reservation_create";
const mapStateToProps = state => {
    return ({

    })
}

const mapDispatchToProps = dispatch => {
    return {
        createReservation: (reservation) => dispatch(postReservation(reservation))
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(ReservationCreate)