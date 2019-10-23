import React, { Component } from 'react'
import { Link } from "react-router-dom"
class RestaurantIndexList extends React.Component {
    constructor(props) {
        super(props)
        this.pos1 = 0
        this.pos2 = 4
    }

    window(arr) {
        return arr.slice(this.pos1, this.pos2)
    }

    nextWindow(arr) {
        return this.window(arr, this.pos1 + 4, this.pos2 + 4)
    }

    componentDidUpdate(prevProps) {
        // if (prevProps.match.params.restaurantId !== this.props.match.params.restaurantId) {
        //     this.props.requestRestaurant(this.props.match.params.restaurantId);
        // }
    }

    render() {
        const eles = this.window(this.props.restaurants)
        return(
            <ul className="restaurant-index-ul">
                {eles.map(restaurant =>
                    <li className="restaurant-index-li" key={restaurant.id}>
                        <Link className="restaurant-index-link" to={`/restaurants/${restaurant.id}`}>
                            <div>{restaurant.name}</div>
                            <img className="restaurant-index-img" src={restaurant.photoUrls[0]} />
                            <div>{restaurant.style}</div>
                        </Link>
                    </li>)}
                <button 
                    className="restaurant-index-ul-advancing-button"
                    onClick={() => this.nextWindow(this.props.restaurants, this.pos1, this.pos2)}
                    >>
                </button>
            </ul>
        )
    }
}

export default RestaurantIndexList