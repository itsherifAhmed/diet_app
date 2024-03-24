import 'dart:io';
import 'package:diet_app/constants/text_styles.dart';
import 'package:diet_app/constants/texts.dart';
import 'package:diet_app/controller/shared_preferences_controller.dart';
import 'package:diet_app/features/home/addItem/controller/create_item_controller.dart';
import 'package:diet_app/widgets/custome_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

class CreateItemScreen extends StatefulWidget {
  const CreateItemScreen({super.key});

  @override
  State<CreateItemScreen> createState() => _CreateItemScreenState();
}

class _CreateItemScreenState extends State<CreateItemScreen> {
  @override
  Widget build(BuildContext context) {
    final sharedPreferences = Get.put(SharedPreferencesController());
    final formKey = GlobalKey<FormState>();

    return GetBuilder<CreateItemScreenController>(
        init: CreateItemScreenController(),
        builder: (controller) {
          return Obx(() => Scaffold(
                appBar: AppBar(
                  leading: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      weight: 10.37.w,
                    ),
                  ),
                  title: Text(
                    AppTexts.addItemInList,
                    style: addMoreTitleLeading(),
                  ),
                  iconTheme: IconThemeData(
                    color: AppColors.mainAppColor,
                  ),
                ),
                body: Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        InkWell(
                          onTap: () => controller.pickImage(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 160.w,
                              height: 137.h,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.mainAppColor),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: controller.imageFile.value.isNotEmpty
                                  ? Image.file(
                                      File(controller.imageFile.value),
                                      fit: BoxFit.cover,
                                      width: 160.w,
                                      height: 137.h,
                                    )
                                  : Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.camera_alt_outlined,
                                            color: AppColors.mainAppColor,
                                            weight: 40,
                                            size: 40,
                                          ),
                                          Text(
                                            'Click To Add Photo',
                                            style: cardSmallText(),
                                          )
                                        ],
                                      ),
                                    ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        customeTextFiled(
                          controller.itemController.value,
                          'Name of item',
                          TextInputType.text,
                          (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Item Name";
                            }
                            return null;
                          },
                        ),
                        const Spacer(),
                        customeTextFiled(
                          controller.quantityController.value,
                          'Quantity',
                          TextInputType.number,
                          (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter Quentity";
                            }
                            return null;
                          },
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 130.w,
                                    child: customeTextFiled(
                                      controller.caloriesController.value,
                                      'Calories',
                                      TextInputType.number,
                                      (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please Enter Calories";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(height: 20.h),
                                      Text(
                                        'kc',
                                        textAlign: TextAlign.end,
                                        style: cardSmallText(),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 160.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 130.w,
                                    child: customeTextFiled(
                                      controller.fatController.value,
                                      'Fat',
                                      TextInputType.number,
                                      (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please Enter Fat";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(height: 20.h),
                                      Text(
                                        'gm',
                                        textAlign: TextAlign.end,
                                        style: cardSmallText(),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 160.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 130.w,
                                child: customeTextFiled(
                                  controller.proteinController.value,
                                  'Protein',
                                  TextInputType.number,
                                  (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please Enter Protein";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 20.h),
                                  Text(
                                    'gm',
                                    textAlign: TextAlign.end,
                                    style: cardSmallText(),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        OutlinedButton.icon(
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              if (controller.imageFile.isEmpty) {
                                Get.snackbar('Image..', 'Please Pick Image');
                              } else {
                                Map<String, dynamic> deta = {
                                  'itemImage': controller.imageFile.value,
                                  'item': controller.itemController.value.text,
                                  'quantity': controller.quantityController.value.text,
                                  'calories': controller.quantityController.value.text,
                                  'fat': controller.fatController.value.text,
                                  'protein': controller.proteinController.value.text
                                };
                                var message = await sharedPreferences.preferencesStore('items', deta);
                                controller.loadDeta();
                                Get.back();
                                Get.snackbar('', message!);
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: AppColors.mainAppColor),
                            ),
                          ),
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: AppColors.mainAppColor,
                          ),
                          label: Text(
                            'Add item',
                            style: GoogleFonts.inriaSans(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w100,
                              color: AppColors.mainAppColor,
                            ),
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ));
        });
  }
}
