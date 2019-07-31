import { signup } from '../../actions/session';
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
        closeModal: () => dispatch(closeModal())
    }
)


export default connect(mapStateToProps, mapDispatchToProps)(SessionForm)