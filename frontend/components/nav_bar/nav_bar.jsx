import React from 'react';
import { Link } from 'react-router-dom'
import UserDropdown from '../dropdown/user_dropdown'

export default ({ currentUser, logout, openModal }) => {
    const display = currentUser ? (
        <div className="nav-bar">
            <Link to="/" className="header-link">
                    <h2>Open Table </h2>
            </Link>
            {/* <button className="logout-btn" onClick={logout}>Logout</button> */}
            <UserDropdown />
            {/* needs a link to reservations */}
        </div>
    ) : (
            <div className="nav-bar">
                <Link to="/" className="header-link">
                    <h2>Open Table </h2>
                </Link>
                <button className="nav-sign-in-button" onClick={() => openModal('login')}>Sign in</button>
                <button className="nav-sign-up-button" onClick={() => openModal('signup')}>Sign up</button>
            </div>
        );
    return (
        <header>
            <div>
                {display}
            </div>
        </header>
    )
}