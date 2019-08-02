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
        return (
            <div>
                <button onClick={this.addHiddenClass}>Dropdown</button>
                <ul className={this.state.hidden ? 'drop-down hide' : 'drop-down' }>
                    <li><button onClick={logout}>Logout</button></li>
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

// const mapStateToProps = state => ({
//     dropdown: state.ui.dropdown
// })

const mapDispatchToProps = dispatch => ({
    logout: () => dispatch(logout())
});
// export default DropDown
export default connect(null, mapDispatchToProps)(userDropdown)