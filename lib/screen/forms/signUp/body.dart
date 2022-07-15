import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medplace/helpers/constants.dart';
import 'package:medplace/helpers/widgets.dart';
import 'package:medplace/screen/forms/signIn/body.dart';
import 'package:medplace/screen/forms/signUp/components/signUp.dart';
import 'package:medplace/screen/forms/signUp/components/form.dart';

class SignUpBody extends StatefulWidget {
  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Container(
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
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (email) =>
                            email != null && !EmailValidator.validate(email)
                                ? 'Enter a valid email'
                                : null,
                        decoration: InputDecoration(
                            label: Text('Email'),
                            hintText: 'email@example.com',
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.email_outlined,
                                color: kGradientThree,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (password) {
                          if (password != null && password.length < 7) {
                            return 'Enter a minimum of 7 characters';
                          } else {
                            return null;
                          }
                        },
                        obscureText: obscure,
                        decoration: InputDecoration(
                            label: Text(
                              'Password',
                            ),
                            hintText: '********',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    obscure = !obscure;
                                  });
                                },
                                icon: Icon(
                                  obscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: kGradientThree,
                                ))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      OutlinedBttn(
                        title: 'Next',
                        press: () {
                          final isValidForm = formKey.currentState!.validate();
                          if (isValidForm) {
                            Get.to(() => SignUpForm());
                          }
                        },
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already Signed In?', style: kSign),
                          TextButton(
                              onPressed: () => Get.to(() => SignIn()),
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
