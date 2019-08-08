import React, { Component } from 'react'


class RestaurantShow extends React.Component {
    constructor(props){
        super(props)
    }

    componentDidMount() {
        this.props.requestRestaurant(this.props.restaurantId)
    }

    componentDidUpdate(prevProps) {
        if (prevProps.match.params.restaurantId !== this.props.match.params.restaurantId) {
            this.props.requestRestaurant(this.props.match.params.restaurantId);
        }
    }

    render () {
        if (!this.props.restaurant) {
            return (
                <div className="restaurant-show-loading">Loading...</div>
            )
        }
        return (
            <div className="main-component">
                <div className="main-right-component"> 
                    <hr></hr>
                    <div className="main-address-container">🗺 Address
                        <div className="main-address"> {this.props.restaurant.address} </div>
                    </div>
                    <hr></hr>
                    {/* <div className="main-capacity-container">Capacity: 
                        <div className="main-capacity">{this.props.restaurant.capacity}</div>
                    </div> */}
                    <div className="main-neighborhood-container">🏘 Neighborhood 
                        <div className="main-neighborhood">{this.props.restaurant.neighborhood}</div>
                    </div>
                    <hr></hr>
                    <div className="main-style-container">🍽 Cuisine
                        <div className="main-style">{this.props.restaurant.style}</div>
                    </div>
                    <hr></hr>
                    <div className="main-dining-style-container">🛎 Dining Style 
                        <div className="main-dining-style">{this.props.restaurant.dining_style}</div>
                    </div>
                    <hr></hr>
                    <div className="main-dress-code-container">👗 Dress Code 
                        <div className="main-dress-code">{this.props.restaurant.dress_code}</div>
                    </div>
                    <hr></hr>
                    <div className="main-chef-container">👨‍🍳 Executive Chef
                        <div className="main-chef">{this.props.restaurant.chef}</div>
                    </div>
                    <hr></hr>
                </div>
                <div className="main-left-component">
                    <hr></hr>
                    <div className="main-name">{this.props.restaurant.name}</div>
                    <hr></hr>
                    <div className="main-description">{this.props.restaurant.description}</div>
                    <hr></hr>
                </div>
            </div>
        )
    }
}

export default RestaurantShow
