import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medplace/screen/authentication/onboarding.dart';

import 'helpers/theme.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MedPlace());
}

class MedPlace extends StatelessWidget {
  const MedPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        builder: (BuildContext context, child) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              theme: theme(),
              home: OnboardingScreen(),
            ));
  }
}
