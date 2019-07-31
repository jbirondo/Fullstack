import React from 'react';

export default ({ currentUser, logout, openModal }) => {
    const display = currentUser ? (
        <div>
            <h3>Welcome {currentUser.email}!</h3>
            <button className="logout-btn" onClick={logout}>Logout</button>
            {/* needs a link to reservations */}
        </div>
    ) : (
            <div>
                <button onClick={() => openModal('login')}>Login</button>
                &nbsp;or&nbsp;
                <button onClick={() => openModal('signup')}>Signup</button>
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