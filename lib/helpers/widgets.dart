import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutlinedBttn extends StatelessWidget {
  final String title;
  final Function() press;

  const OutlinedBttn({Key? key, required this.title, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Center(
        child: Container(
          width: 200,
          height: 45,
          decoration: BoxDecoration(
            border: Border.all(color: kGradientThree, width: 2),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: kGradientThree, fontSize: 17.sp),
            ),
          ),
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  // final Function() activate;
  final IconData icon;
  final String labelTxt;
  final String hintTxt;
  // final Function() valid;
  // final String value;
  final bool? obscure;

  const InputField({
    Key? key,
    // required this.activate,
    required this.icon,
    required this.hintTxt,
    required this.labelTxt,
    this.obscure = true,
    // this.activate,
    // required this.valid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: kGrey),
        labelText: labelTxt,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: kGrey),
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: kGradientThree,
          ),
        ),
        hintText: hintTxt,
        hintStyle: TextStyle(color: kGradientThree),
        contentPadding: EdgeInsets.all(15.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: kGradientThree, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: kGrey),
        ),
      ),
    );
  }
}

class Shader extends StatelessWidget {
  final String title;
  final double style;
  const Shader({
    Key? key,
    required this.title,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (rect) => LinearGradient(
        colors: [kGradientOne, kGradientTwo],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(rect),
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: style, fontWeight: FontWeight.bold),
      ),
    );
  }
}

