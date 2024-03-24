import 'package:diet_app/constants/colors.dart';
import 'package:diet_app/constants/images.dart';
import 'package:diet_app/constants/texts.dart';
import 'package:diet_app/features/home/main_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            SizedBox(height: 190.h),
            Image.asset(
              AppImages.onboarding,
              width: 303.w,
              height: 240.h,
            ),
            SizedBox(height: 20.h),
            Text(
              AppTexts.onboardingSlogan1,
              style: GoogleFonts.inriaSans(
                fontSize: 32.sp,
                fontWeight: FontWeight.normal,
                color: AppColors.mainAppColor,
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              AppTexts.onboardingSlogan2,
              style: GoogleFonts.inriaSans(
                fontSize: 20.sp,
                fontWeight: FontWeight.normal,
                color: AppColors.color717171,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 70.h),
            InkWell(
              onTap: () => Get.offAll(
                () => const MainHomeScreen(),
              ),
              child: SvgPicture.asset(
                AppImages.onboardingButton,
                width: 293.w,
                height: 71.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}
