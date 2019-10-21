import React, { Component } from 'react'
import {Link} from "react-router-dom"
import RestaurantIndexList from "./restaurant_index_list"
class RestaurantIndex extends React.Component {
  constructor(props) {
    super(props)
  }

  componentDidMount() {
    this.props.requestAllRestaurants();
  }

  advanceButton() {

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
    const fineDining = new Array
    const casualDining = new Array
    const familyStyle = new Array
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
    restaurantArray.forEach(restaurant => {
      if (restaurant.dining_style == "Fine Dining") {
        fineDining.push(restaurant)
      } else if (restaurant.dining_style == "Casual Dining") {
        casualDining.push(restaurant)
      } else if (restaurant.dining_style == " Family Style") {
        familyStyle.push(restaurant)
      } 
    })
    return(
      <div>
        <div>Restaurants in the Gryffindor neighborhood
          <RestaurantIndexList restaurants={gryff}></RestaurantIndexList>
        </div>
        <div>Restaurants in the Hufflepuff neighborhood
          <RestaurantIndexList restaurants={huffle}></RestaurantIndexList>
        </div>
        <div>Restaurants in the Slytherin neighborhood
          <RestaurantIndexList restaurants={slyth}></RestaurantIndexList>
        </div>
        <div>Restaurants in the Ravenclaw neighborhood
          <RestaurantIndexList restaurants={raven}></RestaurantIndexList>
        </div>
        <div>Family Style restaurants in your area
          <RestaurantIndexList restaurants={familyStyle}></RestaurantIndexList>
        </div>
        <div>Casual Dining restaurants in your area
          <RestaurantIndexList restaurants={casualDining}></RestaurantIndexList>
        </div>
        <div>Fine Dining restaurants in your area
          <RestaurantIndexList restaurants={fineDining}></RestaurantIndexList>
        </div>
      </div>
    )
  }
}

export default RestaurantIndex