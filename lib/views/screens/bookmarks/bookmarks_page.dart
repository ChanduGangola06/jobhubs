import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhubs/constants/app_constants.dart';
import 'package:jobhubs/views/common/app_bar.dart';
import 'package:jobhubs/views/common/app_style.dart';
import 'package:jobhubs/views/common/drawer/drawer_widget.dart';
import 'package:jobhubs/views/common/reusable_text.dart';

class BookMarksPage extends StatefulWidget {
  const BookMarksPage({super.key});

  @override
  State<BookMarksPage> createState() => _BookMarksPageState();
}

class _BookMarksPageState extends State<BookMarksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(
          child: Padding(
            padding: EdgeInsets.all(12.0.h),
            child: DrawerWidget(color: Color(kDark.value)),
          ),
        ),
      ),
      body: Center(
        child: ReusableText(
          text: "Profile Page",
          style: appStyle(30, Color(kDark.value), FontWeight.bold),
        ),
      ),
    );
  }
}
