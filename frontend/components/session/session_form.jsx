import React from 'react';

class SessionForm extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            email: "",
            password: ""
        };
        this.handleInput = this.handleInput.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.demoUser = this.demoUser.bind(this)
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
                {this.props.errors.map((error, i) => (<li className="session-form-error-list-item" key={i}>{error}</li>))}
            </ul>)
        }
    }

    demoUser(event) {
        event.preventDefault();
        this.props.login({ email: "demo", password: "hunter2" }).then(this.props.closeModal);
    }

    render() {
        let path = "login"
        let title = "Welcome to OpenTable!";
        let altTitle = "Have an account? Log in here"
        let button = "Create Account"
        if (this.props.formType === "login") {
            title = "Please sign in";
            path = "signup";
            altTitle = "No account? Please sign up"
            button = "Sign In"
        };
        return (
            <div className="session-form">
                {this.errors()}
                <h2 className="session-form-title">{title}</h2>
                <hr></hr>
                <label className="session-form-email-label">Enter email *
                    <br/>
                    <input className="sign-in-input" type="text" onChange={this.handleInput('email')} value={this.state.email} />
                </label>
                <br/>
                <label className="session-form-password-label">Enter password *
                    <br/>
                    <input className="sign-in-input" type="password" onChange={this.handleInput('password')} value={this.state.password} />
                </label>
                <br/>
                <button className="sign-in-button" onClick={this.handleSubmit}>{button}</button>
                <button className="demo-sign-in-button" onClick={this.demoUser}>Demo Login</button>
                <button className="alt-sign-in-button" onClick={() => this.props.openModal(path)}>{altTitle}</button>
            </div>
        )
    }
}

export default SessionForm;