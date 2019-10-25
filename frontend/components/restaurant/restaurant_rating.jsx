import React, { Component } from "react";

class RestaurantRating extends Component {
    render() {
        const lit = index => ({
            color: index <= this.props.rating ? "red" : "#aaa"
        });

        return (
            <div className="stars">
                <i className="fa fa-star" style={lit(1)}></i>
                <i className="fa fa-star" style={lit(2)}></i>
                <i className="fa fa-star" style={lit(3)}></i>
                <i className="fa fa-star" style={lit(4)}></i>
                <i className="fa fa-star" style={lit(5)}></i>
            </div>
        );
    }
}

export default RestaurantRating