import 'package:flutter/material.dart';
import 'package:medplace/screen/forms/signUp/body.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SignUpBody(),
    );
  }
}
