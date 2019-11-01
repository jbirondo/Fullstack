import { requestRestaurant } from '../../actions/restaurant'
import { connect } from 'react-redux'
import RestaurantShow from './restaurant_show'
import { createReservationDate } from "../../actions/reservation_date"

const mapStateToProps = (state, ownProps) => {
    // debugger
    const restaurantId = parseInt(ownProps.match.params.restaurantId);
    const restaurant = state.entities.restaurant[ownProps.match.params.restaurantId]
  return {
    restaurantId,
    restaurant
  };
};

const mapDispatchToProps = dispatch => ({
    requestRestaurant: id => dispatch(requestRestaurant(id)),
    createReservationDate: reservationDate => dispatch(createReservationDate(reservationDate))
});

export default connect(mapStateToProps, mapDispatchToProps)(RestaurantShow);