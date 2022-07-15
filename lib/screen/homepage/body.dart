import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medplace/helpers/constants.dart';
import 'package:medplace/helpers/widgets.dart';
import 'package:medplace/screen/homepage/menu.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      color: Colors.transparent,
      backdropTapClosesPanel: true,
      panel: Container(
        decoration: BoxDecoration(
            color: containerTheme,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      ),
      collapsed: Container(
        decoration: BoxDecoration(
            color: containerTheme,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BarIndicator(),
            Center(
              child: Text(
                'most common drugs',
                style: TextStyle(color: kGradientOne, fontSize: 25.sp),
              ),
            )
          ],
        ),
      ),
      // backgroundColor: kBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(20.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                // opacity: 20,
                image: AssetImage('assets/backgrounds.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    Image.asset('assets/Mask Group.png'),
                    Shader(
                      title: 'Good Morning \nBukola',
                      style: 40.sp,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  'How may we help you?',
                  style: TextStyle(color: textTheme),
                ),
                SizedBox(
                  height: 40.h,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: textTheme),
                        borderRadius: BorderRadius.circular(20.h)),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: textTheme,
                    ),
                    hintText: 'Search Drugs, Pharmacy....',
                    hintStyle: const TextStyle(color: textTheme),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'frequently purchased',
                      style: TextStyle(
                        color: kGradientOne,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('see all'),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CardContent(
                          drugName: 'Panadol',
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CardContent(
                          drugName: 'Paracetamol',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CardContent(
                          drugName: 'Panadol',
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        const CardContent(
                          drugName: 'Paracetamol',
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final String? rating;
  final String drugName;
  final String? manufacturer;
  final String? function;

  const CardContent(
      {Key? key,
      required this.drugName,
      this.function,
      this.manufacturer,
      this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 223.h,
      width: 183.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              Center(
                child: Container(
                  height: 125.h,
                  width: 179.w,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: containerTheme,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  drugName,
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text('Emzor'),
              ),
              SizedBox(
                height: 5.h,
              ),
              const Divider(
                indent: 5,
                endIndent: 5,
                thickness: 0.8,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                width: double.maxFinite,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text(
                        'Painkiller . Fever . Headache . Fever',
                        style: TextStyle(color: textTheme, fontSize: 15.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 30.h,
                    width: 60.w,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Image.asset('assets/Stroke 1.jpg'),
                          SizedBox(
                            width: 5,
                          ),
                          const Text('4.7')
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
