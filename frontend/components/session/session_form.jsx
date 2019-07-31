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
        let altTitle = "LOGIN"
        if (this.props.formType === "login") {
            title = "Login";
            path = "signup";
            altTitle = "SIGNUP"
        };
        // debugger
        return (
            <div>
                {this.errors()}
                <h2>{title}</h2>
                <label>Email
                    <input type="text" onChange={this.handleInput('email')} value={this.state.email} />
                </label>
                <label>Password
                    <input type="password" onChange={this.handleInput('password')} value={this.state.password} />
                </label>
                <button onClick={this.handleSubmit}>Submit</button>
                <button onClick={() => this.props.openModal(path)}>{altTitle}</button>
            </div>
        )
    }
}

export default SessionForm;