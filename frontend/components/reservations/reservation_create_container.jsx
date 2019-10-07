import { connect } from 'react-redux'
import { postReservation } from "../../actions/reservation"
import ReservationCreate from "./reservation_create"
const mapStateToProps = state => {
    return ({
        reservation 
    })
}

const mapDispatchToProps = dispatch => {
    return ({
        action: (reservation) => dispatch(postReservation(reservation))
    })
}

export default connect(mapStateToProps, mapDispatchToProps)(ReservationCreate)