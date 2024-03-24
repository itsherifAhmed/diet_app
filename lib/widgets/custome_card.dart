import 'dart:io';

import 'package:diet_app/constants/colors.dart';
import 'package:diet_app/constants/images.dart';
import 'package:diet_app/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Widget customeCard(String itemImage, String itemName, String quentity, String calories, String fat, String protein,
    VoidCallback onTap, IconData icon) {
  return Card(
    color: Colors.white,
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Container(
      padding: const EdgeInsets.all(7),
      height: 118.h,
      width: 353.w,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.file(
              File(itemImage),
              fit: BoxFit.cover,
              width: 119.w,
              height: 98.h,
            ),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(itemName, style: cardTitleStyle()),
                    InkWell(
                      onTap: onTap,
                      child: ClipOval(
                        child: Container(
                          color: AppColors.mainAppColor,
                          child: Center(
                            child: Icon(
                              icon,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Text(quentity, style: cardSmallText2()),
              SizedBox(
                width: 190.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 70.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            AppIcons.fire,
                            width: 15.w,
                          ),
                          Text("$calories kc", style: cardSmallText())
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 80.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            AppIcons.meater,
                            width: 15.w,
                          ),
                          Text("$fat gm", style: cardSmallText())
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 80.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      AppIcons.muscle,
                      width: 15.w,
                    ),
                    Text("$protein gm", style: cardSmallText())
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
