import React from 'react';
import { Link } from 'react-router-dom';

export default ({ currentUser, logout }) => {
    const display = currentUser ? (
        <div>
            <h3>Welcome {currentUser.email}!</h3>
            <button className="logout-btn" onClick={logout}>Logout</button>
            {/* needs a link to reservations */}
        </div>
    ) : (
            <div>
                <Link className="signin-btn" to="/signup">Sign Up</Link>
                <Link className="login-btn" to="/login">Sign In</Link>
            </div>
        );
    return (
        <header className="nav-bar">
            <div>
                {display}
            </div>
        </header>
    )
}