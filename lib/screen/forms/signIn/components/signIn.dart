import 'package:email_validator/email_validator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medplace/helpers/constants.dart';
import 'package:medplace/helpers/widgets.dart';
import 'package:medplace/screen/forms/signUp/components/form.dart';
import 'package:medplace/screen/homepage/menu.dart';

class SignInBody extends StatefulWidget {
  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 900.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/backgrounds.png'),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 60.h,
          ),
          Image.asset('assets/logo.png'),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Welcome back',
            style: kSmallText,
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'Sign in to access your account',
            style: kGreyText,
          ),
          SizedBox(
            height: 50.h,
          ),
          Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.h),
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
                      height: 60.h,
                    ),
                    OutlinedBttn(
                      title: 'Next',
                      press: () {
                        final isValidForm = formKey.currentState!.validate();
                        if (isValidForm) {
                          Get.to(() => Menu());
                        }
                      },
                    ),
                    // SizedBox(
                    //   height: 40,
                    // ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
