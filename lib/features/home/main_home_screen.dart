import 'package:diet_app/constants/colors.dart';
import 'package:diet_app/constants/text_styles.dart';
import 'package:diet_app/constants/texts.dart';
import 'package:diet_app/features/home/addItem/add_more_items.dart';
import 'package:diet_app/features/home/controller/home_screen_conroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainHomeScreenController>(
        init: MainHomeScreenController(),
        builder: (controller) {
          return DefaultTabController(
              initialIndex: 0,
              length: 7,
              child: Obx(
                () => Scaffold(
                  appBar: controller.currentIndex.value == 0
                      ? AppBar(
                          bottom: PreferredSize(
                            preferredSize: Size(double.infinity, 100.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    width: 180.w,
                                    child: Text(AppTexts.homeScreenTitle,
                                        maxLines: 2, textAlign: TextAlign.start, style: homeScreenText1())),
                                SizedBox(height: 10.h),
                                TabBar(
                                  dividerColor: AppColors.colorFFD5C2,
                                  automaticIndicatorColorAdjustment: true,
                                  isScrollable: true,
                                  splashBorderRadius: BorderRadius.circular(20),
                                  labelStyle: homeScreenText2(),
                                  unselectedLabelColor: AppColors.color7D7D7D,
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  tabs: const [
                                    Tab(text: 'Sun'),
                                    Tab(text: 'Mon'),
                                    Tab(text: 'Tue'),
                                    Tab(text: 'Wed'),
                                    Tab(text: 'Thu'),
                                    Tab(text: 'Fri'),
                                    Tab(text: 'Sat'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      : AppBar(
                          title: Text(
                            'Settings',
                            style: homeScreenText1(),
                          ),
                        ),
                  body: controller.screen[controller.currentIndex.value],
                  bottomNavigationBar: Padding(
                    padding: EdgeInsets.only(bottom: 30.h, left: 30.w, right: 30.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: BottomNavigationBar(
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        selectedItemColor: AppColors.colorFFD5C2,
                        unselectedItemColor: Colors.white,
                        elevation: 0,
                        iconSize: 30,
                        backgroundColor: AppColors.mainAppColor,
                        currentIndex: controller.currentIndex.value,
                        onTap: (value) {
                          controller.currentIndex.value = value;
                        },
                        items: const [
                          BottomNavigationBarItem(
                            // activeIcon: Padding(
                            //   padding: const EdgeInsets.only(left: 10),
                            //   child: Column(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     children: [
                            //       Row(
                            //         children: [
                            //           const Icon(Icons.home_outlined, size: 40),
                            //           SizedBox(width: 10.w),
                            //           Text(
                            //             "Homepage",
                            //             style: GoogleFonts.inriaSans(
                            //               fontSize: 14.sp,
                            //               color: AppColors.colorFFD5C2,
                            //             ),
                            //           ),
                            //         ],
                            //       )
                            //     ],
                            //   ),
                            // ),
                            icon: Icon(
                              Icons.home_outlined,
                            ),
                            label: '',
                          ),
                          BottomNavigationBarItem(
                            // activeIcon: Padding(
                            //   padding: EdgeInsets.only(right: 10.w),
                            //   child: Column(
                            //     mainAxisAlignment: MainAxisAlignment.end,
                            //     children: [
                            //       Row(
                            //         mainAxisAlignment: MainAxisAlignment.end,
                            //         children: [
                            //           const Icon(Icons.settings_outlined, size: 40),
                            //           SizedBox(width: 10.w),
                            //           Text(
                            //             "Settings",
                            //             style: GoogleFonts.inriaSans(
                            //               fontSize: 14.sp,
                            //               color: AppColors.colorFFD5C2,
                            //             ),
                            //           ),
                            //           SizedBox(width: 10.w)
                            //         ],
                            //       )
                            //     ],
                            //   ),
                            // ),
                            icon: Icon(
                              Icons.settings_outlined,
                            ),
                            label: '',
                          ),
                        ],
                      ),
                    ),
                  ),
                  floatingActionButton: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                    child: ClipOval(
                      child: FloatingActionButton.large(
                        backgroundColor: AppColors.mainAppColor,
                        onPressed: () {
                          Get.to(() => const AddMoreItemsScreen());
                        },
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
                ),
              ));
        });
  }
}
