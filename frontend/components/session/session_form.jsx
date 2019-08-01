import React from 'react';
import { Link } from 'react-router-dom';

class SessionForm extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            email: "",
            password: ""
        };
        this.handleInput = this.handleInput.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.processForm(user).then(this.props.closeModal);
        // debugger
    }
    handleInput(type) {
        return (e) => {
            this.setState({ [type]: e.currentTarget.value });
        };
    }

    errors() {
        // debugger
        if (this.props.errors) {
            return (<ul>
                {this.props.errors.map((error, i) => (<li key={i}>{error}</li>))}
            </ul>)
        }
    }

    render() {
        let path = "login"
        let title = "Sign Up";
        let altTitle = "Sign Up"
        let button = "Create an account"
        if (this.props.formType === "login") {
            title = "Please sign in";
            path = "signup";
            altTitle = "Have an account? Log in here"
            button = "Sign In"
        };
        // debugger
        return (
            <div>
                {this.errors()}
                <h2>{title}</h2>
                <label>Enter email *
                    <br/>
                    <input className="sign-in-input" type="text" onChange={this.handleInput('email')} value={this.state.email} />
                </label>
                <br/>
                <label>Enter password *
                    <br/>
                    <input className="sign-in-input" type="password" onChange={this.handleInput('password')} value={this.state.password} />
                </label>
                <br/>
                <button className="sign-in-button" onClick={this.handleSubmit}>{button}</button>
                {/* <p>--- or --- </p> */}
                <button className="alt-sign-in-button" onClick={() => this.props.openModal(path)}>{altTitle}</button>
            </div>
        )
    }
}

export default SessionForm;