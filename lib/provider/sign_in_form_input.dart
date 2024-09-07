



import 'package:equatable/equatable.dart';
import 'package:schoobeeapp/models/form_fields/password.dart';
import 'package:schoobeeapp/provider/sign_in_provider.dart';

import '../models/form_fields/email.dart';

class SignInFormInput extends Equatable {

  const SignInFormInput({
    this.email = const Email.unvalidated(),
    this.password = const Password.unvalidated(),
    this.submissionStatus = SubmissionStatus.idle,
  });

  final Email email;
  final Password password;
  final SubmissionStatus submissionStatus;

  SignInFormInput copyWith({
    Email? email,
    Password? password,
    SubmissionStatus? submissionStatus,
}) {
    return SignInFormInput(
      email: email ?? this.email,
      password: password ?? this.password,
      submissionStatus: submissionStatus ?? this.submissionStatus,
    );
  }







  @override

  List<Object?> get props => [
    email,
    password,
    submissionStatus,
  ];





}

enum SubmissionStatus {
  /// Used when the form has not been sent yet.
  idle,

  /// Used to disable all buttons and add a progress indicator to the main one
  inProgress,

  /// Used to close the screen and navigate back to the caller screen.

  success,

  /// Used to display a generic snack bar saying that an error has occured, e.g., no internet connection.

  genericError,

  /// Used to show a more specific error telling the user they got the email and/or password wrong.
  invalidCredentialsError,
}