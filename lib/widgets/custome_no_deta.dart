import 'package:diet_app/constants/images.dart';
import 'package:diet_app/constants/text_styles.dart';
import 'package:diet_app/constants/texts.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget noDeta() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 100.h),
        Image.asset(
          AppImages.notdeta,
          width: 245.w,
        ),
        SizedBox(height: 30.h),
        Text(AppTexts.noteDeta, style: homeScreenText3()),
        SizedBox(height: 30.h),
        Text(AppTexts.enterDieatPlease, style: homeScreenText3()),
      ],
    ),
  );
}
