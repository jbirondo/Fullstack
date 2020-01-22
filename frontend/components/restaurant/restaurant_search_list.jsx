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
      list: Object.values(this.props.restaurants)
    });
    console.log(this.state.list, "conponentDidMount")
    console.log(this.props.restaurants, "conponentDidMount")
  }

  componentWillReceiveProps(nextProps) {
    this.setState({
      list: nextProps.items
    });
    console.log(this.state.list, "conponentWillReceiveProps");
    console.log(this.props.restaurants, "componentWillReceiveProps");
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
      // debugger
    } else {
      newList = restaurantArray;
    }
    // if (e.target.value === "") {
    //   this.setState({
    //     list: undefined
    //   });
    // }
    this.setState({
      list: newList
    });
    console.log(this.state.list, "handleChange");
  }

  render() {
    // if (this.state.list === undefined) {
    //   console.log(this.state.list, "if render");
    //   console.log(this.props.restaurants, "if render");
    //   return (
    //     <div className="search-bar-input-container">
    //       <input
    //         type="text"
    //         className="search-bar-input"
    //         onChange={this.handleChange}
    //         placeholder="Search..."
    //       />
    //     </div>
    //   );

    // } else {
      let restaurants = this.state.list
    //   if (restaurants === {}) {
    //       restaurants = []
    //   }
      console.log(this.state.list, "else render");
      console.log(this.props.restaurants, "else render");
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
            <div className="restaurant-search-list-header">
              <i className="fas fa-building"></i>
              RESTAURANTS
            </div>
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
//   }
}

export default RestaurantSearchList;
