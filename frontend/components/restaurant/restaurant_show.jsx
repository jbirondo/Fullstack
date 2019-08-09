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
        // debugger
        if (!this.props.restaurant) {
            return (
                <div className="restaurant-show-loading">Loading...</div>
                )
        }
        // debugger
        let reviews;
        if (this.props.restaurant.reviews) {
            reviews = this.props.restaurant.reviews.map(review => (
                <li className="review-list-item" key={review.id}><section>Rating: {review.rating}</section> <section>{review.body}</section></li>
            ))
        }
        // debugger
        return (
            <div>
                <div className="upper-background">
                    <img className="header-photo" src={this.props.restaurant.photoUrls[0]}/>
                    <img className="header-photo" src={this.props.restaurant.photoUrls[3]}/>
                    <img className="header-photo" src={this.props.restaurant.photoUrls[4]}/>
                </div>
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
                        <h1 className="photos-header">{this.props.restaurant.photoUrls.length} Photos</h1>
                        <div className="main-photo-component">
                            <div><img className="test-photo" src={this.props.restaurant.photoUrls[0]} /></div>
                            <div><img className="test-photo" src={this.props.restaurant.photoUrls[1]} /></div>
                            <div><img className="test-photo" src={this.props.restaurant.photoUrls[2]} /></div>
                            <div><img className="test-photo" src={this.props.restaurant.photoUrls[3]} /></div>
                            <div><img className="test-photo" src={this.props.restaurant.photoUrls[4]} /></div>
                            <div><img className="test-photo" src={this.props.restaurant.photoUrls[5]} /></div>
                            <div><img className="test-photo" src={this.props.restaurant.photoUrls[6]} /></div>
                            <div><img className="test-photo" src={this.props.restaurant.photoUrls[7]} /></div>
                        </div>
                        <div className="review-component">
                            <h1 className="reviews-header">Reviews </h1>
                            <ul>
                                {reviews}
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default RestaurantShow
