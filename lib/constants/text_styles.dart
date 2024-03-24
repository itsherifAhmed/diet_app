import 'package:diet_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

//home screen
TextStyle homeScreenText1() => GoogleFonts.firaSans(
      fontSize: 24.sp,
      color: AppColors.mainAppColor,
      fontWeight: FontWeight.normal,
    );
TextStyle homeScreenText2() => GoogleFonts.inriaSans(
      fontSize: 16.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.mainAppColor,
    );
TextStyle homeScreenText3() => GoogleFonts.inriaSans(
      fontSize: 14,
    );

// add more items screens
TextStyle addMoreTitleLeading() => GoogleFonts.inriaSans(
      fontSize: 24.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.mainAppColor,
    );
TextStyle addMoreCreateItem() => GoogleFonts.inriaSans(
      fontSize: 18,
      color: AppColors.mainAppColor,
    );

TextStyle cardTitleStyle() => GoogleFonts.inriaSans(
      fontSize: 16,
      fontWeight: FontWeight.normal,
    );
TextStyle cardSmallText() => GoogleFonts.inriaSans(
      fontSize: 14.sp,
      fontWeight: FontWeight.w100,
      color: AppColors.mainAppColor,
    );
TextStyle cardSmallText2() => GoogleFonts.inriaSans(
      fontSize: 12.sp,
      fontWeight: FontWeight.normal,
      color: AppColors.color7D7D7D,
    );

//setting card
TextStyle settingCardStyle1() => GoogleFonts.inriaSans(
      fontSize: 24.sp,
      fontWeight: FontWeight.w300,
      color: AppColors.mainAppColor,
    );
TextStyle settingCardStyle2() => GoogleFonts.inriaSans(
      fontSize: 14.sp,
      fontWeight: FontWeight.w200,
      color: const Color(0XFF9F9F9F),
    );
