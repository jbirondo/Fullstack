import { RECEIVE_CURRENT_USER, LOGOUT_CURRENT_USER } from '../actions/session';
import merge from 'lodash/merge'

const nullSession = {
    currentUser: null
};

const sessionReducer = (state = nullSession, action) => {
    Object.freeze(state);
    switch (action.type) {
        case RECEIVE_CURRENT_USER:
            const currentUser = action.user
            return merge({}, { currentUser });
        case LOGOUT_CURRENT_USER:
            return nullSession;
        default:
            return state;
    }
};

export default sessionReducer