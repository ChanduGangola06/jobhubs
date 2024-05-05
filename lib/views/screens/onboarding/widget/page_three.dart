import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobhubs/constants/app_constants.dart';
import 'package:jobhubs/views/common/app_style.dart';
import 'package:jobhubs/views/common/custom_outline_btn.dart';
import 'package:jobhubs/views/common/reusable_text.dart';
import 'package:jobhubs/views/screens/main_screens.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        height: hieght,
        color: Color(kLightBlue.value),
        child: Column(
          children: [
            Image.asset("assets/images/page3.png"),
            const SizedBox(
              height: 20,
            ),
            ReusableText(
              text: 'Welcome to JobHub',
              style: appStyle(30, Color(kLight.value), FontWeight.w600),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.all(8.0.h),
              child: Text(
                  "We help find your dream job acccording to your skills and experience.",
                  textAlign: TextAlign.center,
                  style: appStyle(14, Color(kLight.value), FontWeight.normal)),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomOutlineBtn(
                onTap: () {
                  Get.to(() => const MainScreen());
                },
                hieght: hieght * 0.05,
                width: width * 0.9,
                text: 'Continue as guest',
                color: Color(kLight.value))
          ],
        ),
      ),
    );
  }
}
