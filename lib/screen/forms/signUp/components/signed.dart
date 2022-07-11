import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medplace/helpers/constants.dart';
import 'package:medplace/helpers/widgets.dart';
import 'package:medplace/screen/menu.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Signed extends StatefulWidget {
  const Signed({Key? key}) : super(key: key);

  @override
  State<Signed> createState() => _SignedState();
}

class _SignedState extends State<Signed> {
  final formKey = GlobalKey<FormState>();
  final ImagePicker _picker = ImagePicker();
  String firstName = '';
  String lastName = '';
  String phone = '';
  XFile? pickedFile;
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
            Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    validator: (firstName) {
                      if (firstName != null && firstName.length < 15) {
                        return 'Input';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        label: Text('First name'),
                        hintText: 'First Name ',
                        suffixIcon: Icon(
                          Icons.person_outline_outlined,
                          color: kGradientThree,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              validator: (lastName) {
                if (lastName != null && lastName.length < 15) {
                  return 'Input';
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  label: Text('Someone'),
                  hintText: 'Last Name',
                  suffixIcon: Icon(
                    Icons.person_outline_outlined,
                    color: kGradientThree,
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              validator: (phone) {
                if (phone != null && phone.length < 11) {
                  return 'Enter a minimum of 11 characters';
                } else {
                  return null;
                }
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  label: Text('Phone'),
                  hintText: '08123456789 ',
                  suffixIcon: Icon(
                    Icons.phone_outlined,
                    color: kGradientThree,
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            OutlinedBttn(
              title: 'Register',
              press: () {
                final isValidForm = formKey.currentState!.validate();
                if (isValidForm) {
                  Get.to(() => Menu());
                }
              },
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
// void pickImage() async {
//   final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
//   if (image != null) {
//     setState(() {
//       pickedFile = image;
//     });
//   }
// }
//
// void capturePhoto() async {
//   final XFile? image = await _picker.pickImage(source: ImageSource.camera);
//   if (image != null) {
//     setState(() {
//       pickedFile = photo;
//     });
//   }
// }
