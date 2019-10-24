import React, { Component } from "react";

class RestaurantRating extends Component {
    constructor(props) {
        this.state = {
            average: 0
        }
    }

    render() {

        if (this.props.reviews.length == 0) {
            this.state.average = 0
        } else if (this.props.reviews.length > 0) {
            const counter = 0
            this.props.reviews.forEach(review => {
                counter = counter + review.rating
            })
            debugger
            this.state.average = Math.floor(counter / this.props.reviews.length)
        }
        const lit = index => ({
            color: index <= this.state.average ? "darkorange" : "#aaa"
        });

        return (
            <div className="stars">
                <i className="fas fa-star" style={lit(1)}></i>
                <i className="fas fa-star" style={lit(2)}></i>
                <i className="fas fa-star" style={lit(3)}></i>
                <i className="fas fa-star" style={lit(4)}></i>
                <i className="fas fa-star" style={lit(5)}></i>
            </div>
        );
    }
}

export default RestaurantRating