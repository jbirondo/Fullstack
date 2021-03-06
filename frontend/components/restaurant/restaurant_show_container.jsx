import { requestRestaurant } from '../../actions/restaurant'
import { postReservation } from "../../actions/reservation"
import { connect } from 'react-redux'
import { openModal } from "../../actions/modal";
import RestaurantShow from './restaurant_show'


const mapStateToProps = (state, ownProps) => {
    const restaurantId = parseInt(ownProps.match.params.restaurantId);
    const restaurant = state.entities.restaurant[ownProps.match.params.restaurantId]
    const user = state.session.currentUser
    let userId
      if (state.session.currentUser == null) {
        userId = null;
      } else {
        userId = state.session.currentUser.id;
      }
      
  return {
    restaurantId,
    restaurant,
    userId,
    user
  };
};

const mapDispatchToProps = dispatch => {

    return {
    requestRestaurant: id => dispatch(requestRestaurant(id)),
    openModal: modal => dispatch(openModal(modal)),
    postReservation: reservation => dispatch(postReservation(reservation))
  }
};

export default connect(mapStateToProps, mapDispatchToProps)(RestaurantShow);