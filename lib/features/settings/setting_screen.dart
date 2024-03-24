import 'package:diet_app/constants/text_styles.dart';
import 'package:diet_app/features/settings/about_us_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image.asset(
            //   AppImages.setting,
            //   width: 206.w,
            //   height: 200.h,
            // ),
            InkWell(
              onTap: () => Get.to(() => const AboutUsScreen()),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 270.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About Us',
                              style: settingCardStyle1(),
                            ),
                            Text(
                              'Provide your Informatetion how to use app .',
                              style: settingCardStyle2(),
                            )
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 80,
                        weight: 30,
                        color: AppColors.mainAppColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Alert'),
                    content: const Text("Comming Soon"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                );
              },
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 270.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Share App',
                              style: settingCardStyle1(),
                            ),
                            Text(
                              'You Can Share this app and provide good diet plans to other people to make their life healthier ',
                              style: settingCardStyle2(),
                            )
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        size: 80,
                        weight: 30,
                        color: AppColors.mainAppColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 270.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rate us',
                            style: settingCardStyle1(),
                          ),
                          Text(
                            'Provide your valuable feedback based on your experience using this app. It will help us improve',
                            style: settingCardStyle2(),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_right,
                      size: 80,
                      weight: 30,
                      color: AppColors.mainAppColor,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
