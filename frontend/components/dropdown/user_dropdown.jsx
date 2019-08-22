import React from 'react';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import {logout} from '../../actions/session'


class userDropdown extends React.Component {
    constructor(props){
        super(props);
        this.state = { hidden: true };
        this.addHiddenClass = this.addHiddenClass.bind(this);
    }

    addHiddenClass() {
        this.setState({hidden: !this.state.hidden});
    }

    render() {
        return (
            <div className="user-dropdown-button">
                <button onClick={this.addHiddenClass}><h3 className="nav-bar-welcome-message">{this.props.currentUser.firstName[0]} ⋁</h3></button>
                <ul className={this.state.hidden ? 'user-dropdown-menu hide' : 'user-dropdown-menu' }>
                    <li><button className="logout-button" onClick={this.props.logout}>Sign out</button></li>
                </ul>
            </div>
        )    
    }
} 

const mapStateToProps = state => {
    return {
    currentUser: state.session.currentUser
}
}

const mapDispatchToProps = dispatch => {
    // debugger
    return {
    logout: () => dispatch(logout())
}};
// export default DropDown
export default connect(mapStateToProps, mapDispatchToProps)(userDropdown)