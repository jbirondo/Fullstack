
import {
    RECEIVE_SESSION_ERRORS,
    RECEIVE_CURRENT_USER
} from '../actions/session';

import { CLOSE_MODAL, OPEN_MODAL } from '../actions/modal'


const sessionErrorsReducer = (oldState = [], action) => {
    Object.freeze(oldState);
    switch (action.type) {
        case RECEIVE_SESSION_ERRORS:
            return action.errors;
        case RECEIVE_CURRENT_USER:
            return [];
        case CLOSE_MODAL:
            return [];
        case OPEN_MODAL:
            return []
        default:
            return oldState;
    }
}


export default sessionErrorsReducer;