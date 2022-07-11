import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medplace/helpers/constants.dart';
import 'package:medplace/helpers/widgets.dart';

class Signed extends StatefulWidget {
  const Signed({Key? key}) : super(key: key);

  @override
  State<Signed> createState() => _SignedState();
}

class _SignedState extends State<Signed> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Container(
        width: double.infinity,
        // height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            // opacity: 20,
            image: AssetImage('assets/backgrounds.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset('assets/logo.png'),
            SizedBox(
              height: 20,
            ),
            Text('One last step', style: kSmallText),
            SizedBox(height: 10),
            Text('Fill this form to help us identify you', style: kGreyText),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 95,
              width: 100,
              decoration: BoxDecoration(
                  color: kInner,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: kGradientThree)),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    size: 40,
                    color: kGradientThree,
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Add a profile picture',
              style: TextStyle(color: kGradientThree),
            ),
            SizedBox(
              height: 20,
            ),
            InputField(
              hintTxt: 'Firstname',
              labelTxt: 'First Name',
              icon: Icons.person_outline_outlined,
              obscure: true,
              activate: () {},
            ),
            SizedBox(
              height: 25,
            ),
            InputField(
              hintTxt: 'Someone',
              labelTxt: 'Second Name',
              icon: Icons.person_outline_outlined,
              obscure: true,
              activate: () {},
            ),
            SizedBox(
              height: 25,
            ),
            InputField(
              hintTxt: '08123456789',
              labelTxt: 'Phone',
              icon: Icons.phone_outlined,
              obscure: true,
              activate: () {},
            ),
            SizedBox(
              height: 40,
            ),
            OutlinedBttn(
              press: () {},
              title: 'Register',
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
