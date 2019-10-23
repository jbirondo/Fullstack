import React, { Component } from 'react'
import { Link } from "react-router-dom"
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

    nextWindow(arr) {
        return this.window(arr, this.state.pos1 + 4, this.state.pos2 + 4)
    }

    componentDidUpdate(prevProps, prevState, snapshot) {
        console.log(prevState)
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
                    onClick={() => this.setState({ pos1: this.state.pos1 + 4, pos2: this.state.pos2 + 4 })}
                    >>
                </button>
            </ul>
        )
    }
}

export default RestaurantIndexList