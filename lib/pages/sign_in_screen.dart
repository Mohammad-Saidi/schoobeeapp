import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({
    // required this.userRepository,
    // required this.onSignInSuccess,
    // this.onForgotMyPasswordTap,
    // this.onSignUpTap,
    super.key,
  });

  // final VoidCallback? onSignUpTap;
  // final VoidCallback? onForgotMyPasswordTap;
  // final VoidCallback onSignInSuccess;
  //final UserRepository userRepository;

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(),
        SizedBox(
          height: 10,
        ),
        TextField(),
        SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () {},
          child: const Text('forgotPassword'),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
