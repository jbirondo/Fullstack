import React, { Component } from 'react'
import { Link } from "react-router-dom"
class RestaurantIndexList extends React.Component {
    constructor(props) {
        super(props)
    }

    render() {
        return(
            <ul className="restaurant-index-ul">
                {this.props.restaurants.map(restaurant =>
                    <li className="restaurant-index-li" key={restaurant.id}>
                        <Link className="restaurant-index-link" to={`/restaurants/${restaurant.id}`}>
                            <div>{restaurant.name}</div>
                            <img className="restaurant-index-img" src={restaurant.photoUrls[0]} />
                            <div>{restaurant.style}</div>
                        </Link>
                    </li>)}
                <button className="restaurant-index-ul-advancing-button">></button>
            </ul>
        )
    }
}

export default RestaurantIndexList