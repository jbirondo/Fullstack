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
            <div>
                <button className="user-dropdown" onClick={this.addHiddenClass}><h3 className="nav-bar-welcome-message">Hi, {this.props.currentUser.email} ⋁</h3></button>
                <ul className={this.state.hidden ? 'user-dropdown hide' : 'user-dropdown' }>
                    <li><button onClick={this.props.logout}>Logout</button></li>
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