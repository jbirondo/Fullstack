import { requestRestaurant } from '../../actions/restaurant'
import { connect } from 'react-redux'
import RestaurantShow from './restaurant_show'


const mapStateToProps = (state, ownProps) => {
    // debugger
    const restaurantId = parseInt(ownProps.match.params.restaurantId);
    const restaurant = state.entities.restaurant[ownProps.match.params.restaurantId]
    console.log(state)
    let userId
      if (state.session.currentUser == null) {
        userId = null;
      } else {
        userId = state.session.currentUser.id;
      }
  return {
    restaurantId,
    restaurant,
    userId
  };
};

const mapDispatchToProps = dispatch => {

    return {
    requestRestaurant: id => dispatch(requestRestaurant(id))
  }
};

export default connect(mapStateToProps, mapDispatchToProps)(RestaurantShow);