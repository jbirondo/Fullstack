


const mapStateToProps = state => {
  return {
    restaurants: state.entities.restaurants
  };
};

const mapDispatchToProps = dispatch => {
  return {
    closeModal: () => dispatch(closeModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(RestaurantIndex);