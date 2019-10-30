import { signup, login } from '../../actions/session';
import { connect } from 'react-redux';
import SessionForm from './session_form';
import { openModal, closeModal } from '../../actions/modal';
import React from 'react'

const mapStateToProps = (state, ownProps) => {
    return { 
        errors: state.errors.session, 
        formType: "signup",
         }
}

const mapDispatchToProps = (dispatch, ownProps) => (
    {
        processForm: (user) => dispatch(signup(user)),
        otherForm: (
            <button onClick={() => dispatch(openModal('login'))}>
                Login
            </button>
        ),
        login: (user) => dispatch(login(user)),
        closeModal: () => dispatch(closeModal()),
        openModal: modal => dispatch(openModal(modal))
    }
)


export default connect(mapStateToProps, mapDispatchToProps)(SessionForm)