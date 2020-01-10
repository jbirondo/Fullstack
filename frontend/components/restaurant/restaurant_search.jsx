import React, { Component } from 'react'

class RestaurantSearchList extends Component {
    constructor(props) {
        super(props)
        this.state = {
            list: []
        }
        this.handleChange - this.handleChange.bind(this)
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

        if (e.target.value !== "") {
            currentList = this.props.items;
            newList = currentList.filter(item => {
                const lc = item.toLowerCase();
                const filter = e.target.value.toLowerCase();
                return lc.includes(filter);
            });
        } else {
            newList = this.props.items;
        }
        this.setState({
            list: newList
        });
    }

    render() {
        return (
            <div>
                <input 
                    type="text" 
                    className="search-bar-input"
                    onChange={this.handleChange}
                    placeholder = "Search..."
                />
                <ul>
                    {this.state.list.map(restaurant => (
                        <li key={restaurant}>
                            {restaurant.name}
                        </li>
                    ))}
                </ul>
            </div>
        )
    }
}

export default RestaurantSearchList