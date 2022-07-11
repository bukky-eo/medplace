import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medplace/helpers/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:email_validator/email_validator.dart';
import 'package:medplace/helpers/widgets.dart';
import 'package:medplace/screen/authentication/forms/signUp.dart';
import 'package:medplace/screen/authentication/forms/form.dart';
// import 'signUpBody/SignUpForm.dart';

class SignUpBody extends StatefulWidget {
  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  final formKey = GlobalKey<FormState>();
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Container(
        // height: double.infinity,
        // width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            // opacity: 20,
            image: AssetImage('assets/backgrounds.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset('assets/logo.png'),
            SizedBox(
              height: 30,
            ),
            Text(
              'Create an account',
              style: kSmallText,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'We need these details for authentication',
              style: kGreyText,
            ),
            SizedBox(
              height: 50,
            ),
            Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InputField(
                        icon: FontAwesomeIcons.bagShopping,
                        hintTxt: 'email@example.com',
                        labelTxt: 'Email',
                        activate: () {},
                      ),
                      SizedBox(height: 20),
                      InputField(
                        icon: obscure ? Icons.visibility : Icons.visibility_off,
                        hintTxt: '********',
                        labelTxt: 'Password',
                        activate: () {
                          setState() {
                            obscure = !obscure;
                          }
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      OutlinedBttn(
                          title: 'Next',
                          press: () => Get.to(() => SignUpForm())),
                      SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already Signed In?', style: kSign),
                          TextButton(
                              onPressed: () => Get.to(() => SignUp()),
                              child: Text(
                                'Sign In',
                                style: TextStyle(fontSize: 15, color: kGrey),
                              ))
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
