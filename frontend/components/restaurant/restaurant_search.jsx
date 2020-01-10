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

    render() {

    }
}

export default RestaurantSearchList