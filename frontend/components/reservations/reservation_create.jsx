import React, { Component } from 'react'

class ReservationCreate extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      date: "",
      party_size: "",
      user_id: this.props.userId,
      restaurant_id: this.props.restaurantId,
    };
    this.errors = ""
    this.handleInput = this.handleInput.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const reservation = Object.assign({}, this.state);

    var count = 0;
    for (var i = 0; i < this.props.restaurant.reservations.length; ++i) {
      if (this.props.restaurant.reservations[i].date == reservation.date) {
          count++;
      }
    }


    if (count > this.props.restaurant.capacity){
        this.errors = "Too many reservations for this date, please choose another date"
    } else {
        this.props.postReservation(reservation)
        if (this.errors) {
            this.errors = ""
        }
    }
  }

  handleInput(type) {
    return e => {
      this.setState({ [type]: e.currentTarget.value });
    };
  }

  render() {
      return (
        <div className="reservation-create-container">
            <div>{this.errors}</div>
            <div className="reservation-create-header">Make a reservation</div>
            <div className="party-size-and-date-container">
              <div className="reservation-create-party-size">
                Party Size
                <br></br>
                <input
                  className="party-size-input"
                  type="number"
                  onChange={this.handleInput("party_size")}
                  value={this.state.party_size}
                />
              </div>
              <div className="reservation-create-date">
                Date
                <br></br>
                <input
                  className="date-input"
                  type="date"
                  onChange={this.handleInput("date")}
                  value={this.state.date}
                />
              </div>
            </div>
            <button
              onClick={this.handleSubmit}
              className="reservation-create-button"
            >
              Book a table
            </button>
        </div>
      );
  }
}
export default ReservationCreate;