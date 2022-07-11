import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medplace/helpers/constants.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medplace/helpers/widgets.dart';
import 'package:medplace/screen/forms/signUp/components/signUp.dart';

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
                Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          4, (index) => Image.asset('assets/center.png')),
                    ),
                  ),
                ),
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
                  height: 10,
                ),
                Shader(
                  title: 'Good health',
                  style: 40,
                ),
                SizedBox(height: 10),
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
                  height: 30,
                ),
                const Text(
                  'Semper ultrices gravida tellus sed nunc viverra lectus dapibus ut. Facilisis dui in.',
                  style: TextStyle(color: kGradientThree, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
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
