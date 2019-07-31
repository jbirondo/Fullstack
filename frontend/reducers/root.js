import { combineReducers } from 'redux';

import entities from './entities';
import session from './session';
import errors from './session_errors';

const rootReducer = combineReducers({
    entities,
    session,
    errors
})

export default rootReducer