import { connect } from "react-redux";
import React, { Component } from "react";

class ReservationError extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
      return (
          <div>
              Too many reservations for this day, please select another day
          </div>
      )
  }
}


const mapStateToProps = state => {
  return {};
};

const mapDispatchToProps = dispatch => {
  return {};
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ReservationError);
