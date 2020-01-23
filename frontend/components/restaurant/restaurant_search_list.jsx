import React, { Component } from "react";
import { Link } from "react-router-dom";
class RestaurantSearchList extends Component {
  constructor(props) {
    super(props);
    this.state = {
      list: []
    };
    this.handleChange = this.handleChange.bind(this);
  }

  componentWillMount() {
    this.setState({
      list: []
    });
  }

  componentWillReceiveProps(nextProps) {
    this.setState({
      list: nextProps.items
    });
  }

  handleChange(e) {
    let currentList = [];
    let newList = [];
    let restaurantArray = Object.values(this.props.restaurants);
    if (e.target.value !== "") {
      currentList = restaurantArray;
      newList = currentList.filter(restaurant => {
        const lc = restaurant.name.toLowerCase();
        const filter = e.target.value.toLowerCase();
        return lc.includes(filter);
      });
    } else {
      newList = restaurantArray;
    }
    this.setState({
      list: newList
    });
  }

  render() {
      let restaurants = this.state.list
      return (
        <div>
          <div className="search-bar-input-container">
            <input
              type="text"
              className="search-bar-input"
              onChange={this.handleChange}
              placeholder="Search..."
            />
          </div>
          <ul className="restaurant-search-list">
            {restaurants !== undefined ?  
            <div className="restaurant-search-list-header">
              <i className="fas fa-building"></i>
              RESTAURANTS
            </div>
            : null
            }
            {restaurants !== undefined ? restaurants.map(restaurant => (
              <li className="restaurant-search-list-li" key={restaurant.id}>
                <Link to={`/restaurants/${restaurant.id}`}>
                  <div>{restaurant.name}</div>
                  <div>{restaurant.neighborhood}</div>
                </Link>
              </li>
            )): null }
          </ul>
        </div>
      );
    }
}

export default RestaurantSearchList;
