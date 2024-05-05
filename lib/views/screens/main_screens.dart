import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:jobhubs/constants/app_constants.dart';
import 'package:jobhubs/providers/zoom_provider.dart';
import 'package:jobhubs/views/common/drawer/drawer_screen.dart';
import 'package:jobhubs/views/screens/application/applied_jobs.dart';
import 'package:jobhubs/views/screens/auth/profile_page.dart';
import 'package:jobhubs/views/screens/bookmarks/bookmarks_page.dart';
import 'package:jobhubs/views/screens/chat/chat_list.dart';
import 'package:jobhubs/views/screens/home/home_page.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ZoomNotifier>(
        builder: (context, zoomNotifier, child) {
          return ZoomDrawer(
            menuScreen: DrawerScreen(indexSetter: (index) {
              zoomNotifier.currentIndex = index;
            }),
            menuBackgroundColor: Color(kLightBlue.value),
            angle: 0.0,
            slideWidth: 230,
            borderRadius: 30,
            mainScreen: currentScreen(),
          );
        },
      ),
    );
  }

  Widget currentScreen() {
    var zoomNotifier = Provider.of<ZoomNotifier>(context);
    switch (zoomNotifier.currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const ChatList();
      case 2:
        return const BookMarksPage();
      case 3:
        return const AppliedJobs();
      case 4:
        return const ProfilePage(
          drawer: true,
        );
      default:
        return const HomePage();
    }
  }
}
