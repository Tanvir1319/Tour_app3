import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tour_app/views/bottom_nav_controller/nav_controller.dart';
import 'package:tour_app/views/drawer_screen.dart';

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(children: [
      DrawerScreen(),
      BottomNavController(),
     ]),
   
    );
  }
}
