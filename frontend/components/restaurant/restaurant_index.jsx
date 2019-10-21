import React, { Component } from 'react'
import {Link} from "react-router-dom"
class RestaurantIndex extends React.Component {
  constructor(props) {
    super(props)
  }

  componentDidMount() {
    this.props.requestAllRestaurants();
    // debugger
  }

  render() {
    if (!this.props.restaurants) {
      return (
        <div>Loading...</div>
      )
    } 
    const restaurantArray = Object.keys(this.props.restaurants).map( key => this.props.restaurants[key])
    return(
      <ul>
        {restaurantArray.map(restaurant => 
          <li key={restaurant.id}>
            <Link to={`/restaurants/${restaurant.id}`}>{restaurant.name}</Link>
          </li>)}
      </ul>
    )
    
  }


}

export default RestaurantIndex