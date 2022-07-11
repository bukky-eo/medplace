import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medplace/helpers/constants.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medplace/helpers/widgets.dart';
import 'package:medplace/screen/authentication/forms/signUp.dart';

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
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Container(
                //     width: double.infinity,
                //     child: Row(
                //       children: List.generate(
                //           4, (index) => Image.asset('assets/center.png')),
                //     ),
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/logos.svg'),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'MedPlace',
                      style: kSmallText,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Shader(
                  title: 'Good health',
                  style: 45,
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      height: 2,
                      width: 100,
                      color: kGradientTwo,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Shader(
                      title: 'at your fingerprints',
                      style: 25,
                    )
                  ],
                ),
                SizedBox(
                  height: 100.0,
                ),
                const Text(
                    'Semper ultrices gravida tellus sed nunc viverra lectus dapibus ut. Facilisis dui in.'),
                SizedBox(
                  height: 20,
                ),
                OutlinedBttn(
                    title: 'Get Started', press: () => Get.to(() => SignUp()))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
