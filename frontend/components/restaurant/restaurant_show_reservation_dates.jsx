import React, { Component } from "react";

class RestaurantShowReseverationDate extends React.Component {

    generateCalanderArray() {
        let today = new Date() 
        let datesArray = new Array
        datesArray.push(today)
        return datesArray
    }

    render() {
        console.log(this.generateCalanderArray())
        return (
          <div>
            <div>Hello</div>
            {this.generateCalanderArray().map(date => 
                <div key="5">{date.getDate()}</div>
                )
            }
          </div>
        );
    }


}

export default RestaurantShowReseverationDate