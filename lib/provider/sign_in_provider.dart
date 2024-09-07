

import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:schoobeeapp/provider/sign_in_form_input.dart';

import '../models/form_fields/email.dart';
import '../models/form_fields/password.dart';





class SignInProvider extends ChangeNotifier {

  SignInFormInput _state = SignInFormInput();

  SignInFormInput get signInFormInput => _state;






  void onEmailChanged(String newValue) {

    final previousScreenState = _state;
    final previousEmailState = previousScreenState.email;
    final shouldValidate = previousEmailState.isNotValid;
    final newEmailState = shouldValidate
        ? Email.validated(newValue,)
        : Email.unvalidated(newValue,);

    final newScreenState = _state.copyWith(
      email: newEmailState,
    );

    _updateState(newScreenState);



  }

  void onEmailUnfocused() {
    final previousScreenState = _state;
    final previousEmailState = previousScreenState.email;
    final previousEmailValue = previousEmailState.value;

    final newEmailState = Email.validated(
      previousEmailValue,
    );
    final newScreenState = previousScreenState.copyWith(
      email: newEmailState,
    );
    _updateState(newScreenState);

  }


  void onPasswordChanged(String newValue) {
    final previousScreenState = _state;
    final previousPasswordState = previousScreenState.password;
    final shouldValidate = previousPasswordState.isNotValid;
    final newPasswordState = shouldValidate
        ? Password.validated(
      newValue,
    )
        : Password.unvalidated(
      newValue,
    );

    final newScreenState = _state.copyWith(
      password: newPasswordState,
    );

    _updateState(newScreenState);


  }

  void onPasswordUnfocused() {

    final previousScreenState = _state;
    final previousPasswordState = previousScreenState.password;
    final previousPasswordValue = previousPasswordState.value;

    final newPasswordState = Password.validated(
      previousPasswordValue,
    );

    final newScreenState = previousScreenState.copyWith(
      password: newPasswordState,
    );

    _updateState(newScreenState);





  }

  void onSubmit() async {

    final email = Email.validated(_state.email.value);
    final password = Password.validated(_state.password.value);

    final isFormValid = Formz.validate([
      email,
      password,
    ]);

    final newState = _state.copyWith(
      email: email,
      password: password,
      submissionStatus: isFormValid ? SubmissionStatus.inProgress : null,
    );

    _updateState(newState);

    if (isFormValid) {
      try {
        await userRepository.signIn(
          email.value,
          password.value,
        );
      }
    }

  }

  void _updateState(SignInFormInput newState) {
    _state = newState;
    notifyListeners();
  }





}



// class SignInProvider with ChangeNotifier {
//   SignInCredentials credentials = SignInCredentials(email: Email(''), password: Password(''));
//
//   void updateEmail(String email) {
//     credentials = credentials.copyWith(email: Email(value: email));
//     notifyListeners();
//   }
//
//   void updatePassword(String password) {
//     credentials = credentials.copyWith(password: Password(value: password));
//     notifyListeners();
//   }
//
//   bool isFormValid() => Email.validator(credentials.email.value) == null &&
//       Password.validator(credentials.password.value) == null;
// }





