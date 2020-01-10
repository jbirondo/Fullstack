import React, { Component } from 'react'

class RestaurantSearchList extends Component {
    constructor(props) {
        super(props)
        this.state = {
            list: []
        }
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

    }
}

export default RestaurantSearchList