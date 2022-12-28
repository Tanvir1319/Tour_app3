import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tour_app/const/app_colors.dart';
import 'package:tour_app/ui/routes/routes.dart';
import 'package:tour_app/ui/styles/styles.dart';

class onboardingscreen extends StatelessWidget {
  onboardingscreen({Key? key}) : super(key: key);

  List<String> _lotties = [
    'assets/Files/help.json',
    'assets/Files/support.json',
    'assets/Files/welcome.json'
  ];

  List<String> _title = ['Welcome', 'Support', 'Help'];

  List<String> _description = [
    'an unknown printer took a galley of type and scrambled it to make',
    'an unknown printer took a galley of type and scrambled it to make',
    'an unknown printer took a galley of type and scrambled it to make'
  ];

  RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Obx(
                  (() => Lottie.asset(_lotties[_currentIndex.toInt()])),
                ),
              ),
              Expanded(
                flex: 1,
                child: Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.scaffoldColor,
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(4.0, 4.0),
                                blurRadius: 10,
                                spreadRadius: 1.0),
                            BoxShadow(
                                color: Colors.white,
                                offset: Offset(-4.0, -4.0),
                                blurRadius: 5,
                                spreadRadius: 1.0)
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(30.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(
                              () => Text(
                                '${_title[_currentIndex.toInt()]}',
                                style: Appstyle.logotextstyle,
                              ),
                            ),
                            Text('${_description[_currentIndex.toInt()]}'),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Obx(
                                  () => DotsIndicator(
                                    dotsCount: _lotties.length,
                                    position: _currentIndex.toDouble(),
                                    decorator: DotsDecorator(),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (_currentIndex == 2) {
                                      Get.toNamed(signup);
                                    } else {
                                      _currentIndex + 1;
                                    }
                                  },
                                  child: Container(
                                    height: 37.h,
                                    width: 37.w,
                                    decoration: BoxDecoration(
                                        color: AppColors.scaffoldColor,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black26,
                                              offset: Offset(4.0, 4.0),
                                              blurRadius: 10,
                                              spreadRadius: 1.0),
                                          BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(-4.0, -4.0),
                                              blurRadius: 5,
                                              spreadRadius: 1.0)
                                        ]),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
