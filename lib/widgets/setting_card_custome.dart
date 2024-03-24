import 'package:diet_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/text_styles.dart';

Widget customeSettingCard(String title, String description) {
  return Card(
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
                  title,
                  style: settingCardStyle1(),
                ),
                Text(
                  description,
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
  );
}
