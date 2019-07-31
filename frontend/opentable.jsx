import React from 'react'
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {signup, login, logout } from './actions/session'
console.log("debugger")
document.addEventListener('DOMContentLoaded', () => {
    const store = configureStore();
    window.login = login
    window.signup = signup
    window.logout = logout
    console.log("debugger")
    const root = document.getElementById('root');
    ReactDOM.render(<Root store={store} />, root);
});