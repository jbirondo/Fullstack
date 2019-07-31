import { login } from '../../actions/session';
import { connect } from 'react-redux';
import SessionForm from './session_form';
import React from 'react'


const mapStateToProps = (state, ownProps) => (
    { errors: state.errors.session, formType: "login" }
)

const mapDispatchToProps = (dispatch, ownProps) => (
    { 
        processForm: (user) => dispatch(login(user)), 
        otherForm: (
            <button onClick={() => dispatch(openModal('signup'))}>
                Signup
            </button>
        ),
        closeModal: () => dispatch(closeModal())
    }
)


export default connect(mapStateToProps, mapDispatchToProps)(SessionForm)