import { requestAllRestaurants } from '../../actions/restaurant'
import { connect } from 'react-redux'
import RestaurantIndex from './restaurant_index'

const mapStateToProps = state => {
    return {
        restaurants: state.entities.restaurant
    };
};

const mapDispatchToProps = dispatch => ({
    requestAllRestaurants: () => dispatch(requestAllRestaurants())
});

export default connect(mapStateToProps, mapDispatchToProps)(RestaurantIndex);