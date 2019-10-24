import React, { Component } from 'react'
import { Link } from "react-router-dom"
import RestaurantRating from "./restaurant_rating"
class RestaurantIndexList extends React.Component {
    constructor(props) {
        super(props)
        this.state = {
            pos1: 0,
            pos2: 4
        }
    }

    window(arr) {
        return arr.slice(this.state.pos1, this.state.pos2)
    }

    // componentDidUpdate(prevProps, prevState, snapshot) {
    //     console.log(prevState)
    // }


    render() {
        const eles = this.window(this.props.restaurants)
        if (this.state.pos1 == 0 && this.props.restaurants.length > 4) {
            return(
                <div className="restaurant-index-list-container">
                    <ul className="restaurant-index-ul">
                        {eles.map(restaurant =>
                            <li className="restaurant-index-li" key={restaurant.id}>
                                <Link className="restaurant-index-link" to={`/restaurants/${restaurant.id}`}>
                                    <img className="restaurant-index-img" src={restaurant.photoUrls[0]} />
                                    <div className="restaurant-index-name">{restaurant.name}</div>
                                    <RestaurantRating reviews={restaurant.reviews}></RestaurantRating>
                                    <div className="restaurant-index-info">{restaurant.style} • {restaurant.dress_code}</div>
                                </Link>
                            </li>)}
                    </ul>
                    <button
                        className="restaurant-index-ul-increase-button"
                        onClick={() => this.setState({ pos1: this.state.pos1 + 4, pos2: this.state.pos2 + 4 })}
                    >+
                    </button>
                </div>
            )
        } else if ( this.state.pos1 >= 4 && this.state.pos2 < this.props.restaurants.length ){ 
            return (
                <div className="restaurant-index-list-container">
                    <button
                        className="restaurant-index-ul-decrease-button"
                        onClick={() => this.setState({ pos1: this.state.pos1 - 4, pos2: this.state.pos2 - 4 })}
                    >-
                    </button>
                    <ul className="restaurant-index-ul">
                        {eles.map(restaurant =>
                            <li className="restaurant-index-li" key={restaurant.id}>
                                <Link className="restaurant-index-link" to={`/restaurants/${restaurant.id}`}>
                                    <img className="restaurant-index-img" src={restaurant.photoUrls[0]} />
                                    <div className="restaurant-index-name">{restaurant.name}</div>
                                    <div className="restaurant-index-info">{restaurant.style} • {restaurant.dress_code}</div>
                                </Link>
                            </li>)}
                    </ul>
                    <button
                        className="restaurant-index-ul-increase-button"
                        onClick={() => this.setState({ pos1: this.state.pos1 + 4, pos2: this.state.pos2 + 4 })}
                    >+
                    </button>
                </div>
            )
        } else if (this.state.pos2 >= this.props.restaurants.length && this.state.pos1 != 0) {
            return (
                <div className="restaurant-index-list-container">
                    <button
                        className="restaurant-index-ul-decrease-button"
                        onClick={() => this.setState({ pos1: this.state.pos1 - 4, pos2: this.state.pos2 - 4 })}
                    >-
                    </button>
                    <ul className="restaurant-index-ul">
                        {eles.map(restaurant =>
                            <li className="restaurant-index-li" key={restaurant.id}>
                                <Link className="restaurant-index-link" to={`/restaurants/${restaurant.id}`}>
                                    <img className="restaurant-index-img" src={restaurant.photoUrls[0]} />
                                    <div className="restaurant-index-name">{restaurant.name}</div>
                                    <div className="restaurant-index-info">{restaurant.style} • {restaurant.dress_code}</div>
                                </Link>
                            </li>)}
                    </ul>
                </div>

            )
        } else if (this.props.restaurants.length <= 4) {
            return (
                <div className="restaurant-index-list-container">
                    <ul className="restaurant-index-ul">
                        {eles.map(restaurant =>
                            <li className="restaurant-index-li" key={restaurant.id}>
                                <Link className="restaurant-index-link" to={`/restaurants/${restaurant.id}`}>
                                    <img className="restaurant-index-img" src={restaurant.photoUrls[0]} />
                                    <div className="restaurant-index-name">{restaurant.name}</div>
                                    <div className="restaurant-index-info">{restaurant.style} • {restaurant.dress_code}</div>
                                </Link>
                            </li>)}
                    </ul>
                </div>
            )
        }
    }
}

export default RestaurantIndexList