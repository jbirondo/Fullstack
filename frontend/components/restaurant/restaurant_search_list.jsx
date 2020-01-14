import React, { Component } from 'react'
import { Link } from "react-router-dom"
class RestaurantSearchList extends Component {
    constructor(props) {
        super(props)
        this.state = {
            list: []
        }
        this.handleChange = this.handleChange.bind(this)
    }

    componentDidMount() {
        this.setState({
            list: this.props.items
        })
    }

    componentWillReceiveProps(nextProps) {
        this.setState({
            list: nextProps.items
        })
    }

    handleChange(e) {
        let currentList = [];
        let newList = [];
        let restaurantArray = Object.values(this.props.restaurants)
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
        if (e.target.value === "") {
            this.setState({
                list: undefined
            })
        }
        this.setState({
            list: newList
        });
        // debugger
    }

    render() {
        if (this.state.list === undefined) {
            return (
                <div>
                    <input 
                        type="text"
                        className="search-bar-input"
                        onChange={this.handleChange}
                        placeholder="Search..."
                    />
                </div>
            )
        } else {
            return (
                <div>
                    <div>
                    <input 
                        type="text" 
                        className="search-bar-input"
                        onChange={this.handleChange}
                        placeholder = "Search..."
                        />
                    </div>
                    <ul className="restaurant-search-list">
                        <div className="restaurant-search-list-header">
                            <i className='fas fa-building'></i>
                            RESTAURANTS
                        </div>
                        {this.state.list.map(restaurant => (
                            <li 
                                className="restaurant-search-list-li"
                                key={restaurant.id}>
                                <Link to={`/restaurants/${restaurant.id}`}>
                                    <div>{restaurant.name}</div>
                                    <div>{restaurant.neighborhood}</div>
                                </Link>
                            </li>
                        ))}
                    </ul>
                </div>
            )
        }
    }
}

export default RestaurantSearchList