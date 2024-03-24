import 'package:diet_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customeTextFiled(
  TextEditingController controller,
  String hintText,
  TextInputType textInputType,
  String? Function(String?)? validator,
) {
  return TextFormField(
    controller: controller,
    cursorColor: AppColors.mainAppColor,
    keyboardType: textInputType,
    validator: validator,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: GoogleFonts.inriaSans(
        fontSize: 16,
        fontWeight: FontWeight.w100,
        color: const Color(0xff7E7E7E),
      ),
      fillColor: AppColors.mainAppColor,
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.mainAppColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.mainAppColor),
      ),
    ),
  );
}
