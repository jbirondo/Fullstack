import { login } from '../../actions/session';
import { connect } from 'react-redux';
import SessionForm from './session_form';
import React from 'react'
import {closeModal, openModal } from '../../actions/modal'


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
        closeModal: () => dispatch(closeModal()),
        openModal: modal => dispatch(openModal(modal))
    }
)


export default connect(mapStateToProps, mapDispatchToProps)(SessionForm)