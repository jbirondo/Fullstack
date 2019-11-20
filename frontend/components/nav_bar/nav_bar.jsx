import React from 'react';
import { Link } from 'react-router-dom'
import UserDropdown from '../dropdown/user_dropdown'
// import Logo from "./logo.png"

export default ({ currentUser, logout, openModal }) => {
    
    
    const display = currentUser ? (
      <div className="nav-bar clearfix">
        <div className="left-nav-bar">
          <Link to="/" className="header-link">
            <h2>Open Table </h2>
          </Link>
            {/* <img 
                src={require('./logo.png')} 
                alt=" "
                className="logo"
            /> */}
          <div>
            <div className="social-links">
              <a href="https://github.com/jbirondo">
                <i className="fab fa-github fa-2x"></i>
              </a>
              <a href="https://www.linkedin.com/in/eugene-birondo-702637192/">
                <i className="fab fa-linkedin-in fa-2x"></i>
              </a>
              <a href="https://angel.co/eugene-birondo">
                <i className="fab fa-angellist fa-2x"></i>
              </a>
            </div>
          </div>
        </div>
        <div>
          <UserDropdown />
        </div>
        {/* needs a link to reservations */}
      </div>
    ) : (
      <div className="nav-bar">
        <div className="left-nav-bar">
          <Link to="/" className="header-link">
            <h2>Open Table </h2>
          </Link>
          <div className="social-links">
            <a href="https://github.com/jbirondo">
              <i className="fab fa-github fa-2x"></i>
            </a>
            <a href="https://www.linkedin.com/in/eugene-birondo-702637192/">
              <i className="fab fa-linkedin-in fa-2x"></i>
            </a>
            <a href="https://angel.co/eugene-birondo">
              <i className="fab fa-angellist fa-2x"></i>
            </a>
          </div>
        </div>
        <div>
          <button
            className="nav-sign-in-button"
            onClick={() => openModal("login")}
          >
            Sign in
          </button>
          <button
            className="nav-sign-up-button"
            onClick={() => openModal("signup")}
          >
            Sign up
          </button>
        </div>
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