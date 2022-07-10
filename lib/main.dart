import 'package:flutter/material.dart';
import 'package:medplace/screen/authentication/onboarding.dart';

void main() {
  runApp(const MedPlace());
}

class MedPlace extends StatelessWidget {
  const MedPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
