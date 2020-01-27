import React, { Component } from "react";
import { Link } from "react-router-dom";
class RestaurantSearchList extends Component {
  constructor(props) {
    super(props);
    this.state = {
      list: [],
      searchWord: ""
    };
    this.handleChange = this.handleChange.bind(this);
  }

//   componentWillMount() {
//     this.setState({
//       list: []
//     });
//   }

//   componentDidUpdate(nextProps) {
//     this.setState({
//       list: nextProps.items
//     });
//   }

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
    if (e.target.value === "") {
        newList = []
    }
    this.setState({
      searchWord: e.target.value,
      list: newList
    });
  }

  boldSearchWord(restaurantName, searchString){
    // debugger
    let first = restaurantName.toLowerCase().indexOf(searchString.toLowerCase())
    if (first !== undefined) {
    return (
      <div>
        <div>{restaurantName.slice(0, first)}</div>
        <div font-weight="bold">{restaurantName.slice(first, first + searchString.length)}</div>
        <div>{restaurantName.slice(first + searchString.length)}</div>
      </div>
    )
    } 
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
            {restaurants.length > 0 ? 
            <ul className="restaurant-search-list">
            <div className="restaurant-search-list-header">
              <i className="fas fa-building"></i>
              RESTAURANTS
            </div>
            {restaurants.map(restaurant => (
              <li className="restaurant-search-list-li" key={restaurant.id}>
                <Link to={`/restaurants/${restaurant.id}`}>
                  {/* {console.log(this.boldSearchWord(restaurant.name, this.state.searchWord), restaurant.name)} */}
                  <div>{restaurant.name}</div>
                  {/* {this.boldSearchWord(restaurant.name, this.state.searchString)} */}
                  <div>{restaurant.neighborhood}</div>
                </Link>
              </li>
            ))}
          </ul>
            :
             null }
        </div>
      );
    }
}

export default RestaurantSearchList;
