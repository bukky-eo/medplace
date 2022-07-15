import 'package:flutter/material.dart';
import 'package:medplace/helpers/constants.dart';
import 'package:medplace/screen/homepage/body.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: HomePage(),
    );
  }
}
