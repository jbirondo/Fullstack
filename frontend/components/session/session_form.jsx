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
        this.props.processForm(user);
        // debugger
    }
    handleInput(type) {
        return (e) => {
            this.setState({ [type]: e.currentTarget.value });
        };
    }

    errors() {
        debugger
        if (this.props.errors.responseJSON) {
            return (<ul>
                {this.props.errors.responseJSON.map((error, i) => (<li key={i}>{error}</li>))}
            </ul>)
        }
    }

    render() {
        let path = "/login"
        let title = "signup";
        let altTitle = "LOGIN"
        if (this.props.formType === "login") {
            title = "login";
            path = "/signup";
            altTitle = "SIGNUP"
        };
        return (
            <div>
                {this.errors()}
                <h2>{title}</h2>
                <label>Email
                    <input type="text" onChange={this.handleInput('email')} value={this.state.email} />
                </label>
                <label>Password
                    <input type="text" onChange={this.handleInput('password')} value={this.state.password} />
                </label>
                <button onClick={this.handleSubmit}>Submit</button>
                <Link to={path}>{altTitle}</Link>
            </div>
        )
    }
}

export default SessionForm;