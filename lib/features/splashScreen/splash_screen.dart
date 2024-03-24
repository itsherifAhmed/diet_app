import 'package:diet_app/constants/colors.dart';
import 'package:diet_app/constants/images.dart';
import 'package:diet_app/features/onboardingScreen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const OnboardingScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.appLogo,
              height: 147.36.h,
              width: 124.41.w,
            ),
            Image.asset(
              AppImages.appName,
              height: 124.67.h,
              width: 319.w,
            ),
            SizedBox(height: 80.h),
            SizedBox(
              width: 353.w,
              height: 6.h,
              child: LinearProgressIndicator(
                borderRadius: BorderRadius.circular(10),
                backgroundColor: AppColors.color588B8B,
                color: AppColors.mainAppColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
