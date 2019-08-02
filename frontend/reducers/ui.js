import { combineReducers } from 'redux'
import modal from './modal'
import dropdown from './dropdown'


const uiReducer = combineReducers({
    modal,
    dropdown
})

export default uiReducer