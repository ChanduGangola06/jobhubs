import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobhubs/constants/app_constants.dart';
import 'package:jobhubs/views/common/app_style.dart';
import 'package:jobhubs/views/common/drawer/drawer_widget.dart';
import 'package:jobhubs/views/common/heading_widget.dart';
import 'package:jobhubs/views/common/search.dart';
import 'package:jobhubs/views/screens/auth/profile_page.dart';

import '../../common/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String imageUrl =
      "https://d326fntlu7tb1e.cloudfront.net/uploads/b5065bb8-4c6b-4eac-a0ce-86ab0f597b1e-vinci_04.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: CustomAppBar(
              actions: [
                Padding(
                  padding: EdgeInsets.all(12.0.h),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const ProfilePage(drawer: false));
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: CachedNetworkImage(
                        height: 25.w,
                        width: 25.w,
                        imageUrl: imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
              child: Padding(
                padding: EdgeInsets.all(12.0.h),
                child: DrawerWidget(color: Color(kDark.value)),
              ))),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Search \n Find & Apply",
                  style: appStyle(38, Color(kDark.value), FontWeight.bold),
                ),
                SizedBox(height: 20.h),
                SearchWidget(
                  onTap: () {},
                ),
                SizedBox(height: 30.h),
                const HeadingWidget(text: 'Popular Jobs'),
                SizedBox(height: 15.h),
                const HeadingWidget(text: 'Recently Posted ')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
