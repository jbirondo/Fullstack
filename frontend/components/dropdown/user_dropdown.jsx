import React from 'react';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import {logout} from '../../actions/session'
// import LoginFormContainer from '../session/login_container';
// import SignupFormContainer from '../session/signup_container';


class userDropdown extends React.Component {
    constructor(props){
        super(props);
        this.state = { hidden: true };
        this.addHiddenClass = this.addHiddenClass.bind(this);
    }
    // if (!modal) {
    // return null;
    // }
    
    // switch (modal) {
    //     let component
    //     case 'user-nav-dropdown':
    //     component = <LoginFormContainer />;
    //     break;
    //     case 'signup': //restaurant-profile
    //     component = <SignupFormContainer />;
    //     break;
    //     default:
    //     return null;
    // }
    

    addHiddenClass() {
        this.setState({hidden: !this.state.hidden});
    }

    render() {
        // debugger
        return (
            <div className="user-dropdown-button">
                <button onClick={this.addHiddenClass}><h3 className="nav-bar-welcome-message">Hi, {this.props.currentUser.email} ⋁</h3></button>
                <ul className={this.state.hidden ? 'user-dropdown-menu hide' : 'user-dropdown-menu' }>
                    <li><button className="logout-button" onClick={this.props.logout}>Sign out</button></li>
                </ul>
            </div>
        )    
    }

    // render () {  
    //     return (
    //         <div >
    //             <button onClick={this.addHiddenClass}></button>
    //             {this.renderDropDown()}
    //         </div>
    //     )
    // }
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