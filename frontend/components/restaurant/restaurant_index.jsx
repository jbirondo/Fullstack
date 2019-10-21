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
    const gryff = new Array
    const huffle = new Array
    const slyth = new Array
    const raven = new Array
    restaurantArray.forEach(restaurant => {
        if (restaurant.neighborhood == "Gryffindor") {
          gryff.push(restaurant)
        } else if (restaurant.neighborhood == "Hufflepuff"){
          huffle.push(restaurant)
        } else if (restaurant.neighborhood == "Slytherin"){
          slyth.push(restaurant)
        } else if (restaurant.neighborhood == "Ravenclaw"){
          raven.push(restaurant)
        }
      }
    )
    return(
      <div>
        <div>Restaurants in the Gryffindor neighborhood
          <ul className="restaurant-index-ul">
            {gryff.map(restaurant => 
              <li className="restaurant-index-li" key={restaurant.id}>
                <Link to={`/restaurants/${restaurant.id}`}>
                  {restaurant.name}
                </Link>
                <img className="restaurant-index-img" src={restaurant.photoUrls[0]}/>
              </li>)}
          </ul>
        </div>
        <div>Restaurants in the Hufflepuff neighborhood
          <ul className="restaurant-index-ul">
            {huffle.map(restaurant => 
              <li className="restaurant-index-li" key={restaurant.id}>
                <Link to={`/restaurants/${restaurant.id}`}>
                  {restaurant.name}
                </Link>
                <img className="restaurant-index-img" src={restaurant.photoUrls[0]}/>
              </li>)}
          </ul>
        </div>
        <div>Restaurants in the Slytherin neighborhood
          <ul className="restaurant-index-ul">
            {slyth.map(restaurant => 
              <li className="restaurant-index-li" key={restaurant.id}>
                <Link to={`/restaurants/${restaurant.id}`}>
                  {restaurant.name}
                </Link>
                <img className="restaurant-index-img" src={restaurant.photoUrls[0]}/>
              </li>)}
          </ul>
        </div>
        <div>Restaurants in the Ravenclaw neighborhood
          <ul className="restaurant-index-ul">
            {raven.map(restaurant => 
              <li className="restaurant-index-li" key={restaurant.id}>
                <Link to={`/restaurants/${restaurant.id}`}>
                  {restaurant.name}
                </Link>
                <img className="restaurant-index-img" src={restaurant.photoUrls[0]}/>
              </li>)}
          </ul>
        </div>
      </div>
    )
  }
}

export default RestaurantIndex