import React, { Component } from 'react'

class ReservationCreate extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      date: "",
      party_size: "",
      user_id: this.props.userId,
      restaurant_id: this.props.restaurantId
    };
    this.handleInput = this.handleInput.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const reservation = Object.assign({}, this.state);
    console.log(reservation.date)
    var count = 0;
    for (var i = 0; i < this.props.restaurant.reservations.length; ++i) {
      if (this.props.restaurant.reservations[i].date == reservation.date) {
          count++;
      }
    }
    console.log(count)
    // debugger
    this.props.postReservation(reservation);
  }

  handleInput(type) {
    return e => {
      this.setState({ [type]: e.currentTarget.value });
    };
  }

  render() {
    //   debugger
      return (
        <div>
          <div>Make a reservation</div>
          <div>
            Party Size
            <input
              type="number"
              onChange={this.handleInput("party_size")}
              value={this.state.party_size}
            />
          </div>
          <div>
            Date
            <input type="date"
              onChange={this.handleInput("date")}
              value={this.state.date}
            />
          </div>
          <button onClick={this.handleSubmit}>Book a table</button>
        </div>
      );
  }
}
export default ReservationCreate;