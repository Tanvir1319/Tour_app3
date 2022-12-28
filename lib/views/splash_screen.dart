import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tour_app/const/app_strings.dart';
import 'package:tour_app/ui/routes/routes.dart';
import 'package:tour_app/views/onboarding.dart';

import '../ui/styles/styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () => Get.toNamed(onboarding),
    );
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(
                size: 100.w,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppStrings.appName,
                style: Appstyle.logotextstyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
