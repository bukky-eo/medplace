import 'package:flutter/material.dart';
import 'package:medplace/helpers/constants.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _State();
}

class _State extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              // opacity: 20,
              image: AssetImage('assets/backgrounds.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ListView.builder(
                //     padding: const EdgeInsets.all(8),
                //     itemCount: 5,
                //     itemBuilder: (BuildContext context, int index) {
                //       return Container(
                //           height: 50,
                //           child: SingleChildScrollView(
                //             child: Image.asset('assets/center.png'),
                //           ));
                //     }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
