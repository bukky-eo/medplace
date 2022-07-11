import 'package:flutter/material.dart';
import 'package:medplace/helpers/constants.dart';
import 'package:medplace/screen/authentication/forms/signed.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Signed(),
    );
  }
}
