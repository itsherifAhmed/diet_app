import 'package:diet_app/constants/colors.dart';
import 'package:diet_app/constants/images.dart';
import 'package:diet_app/constants/text_styles.dart';
import 'package:diet_app/constants/texts.dart';
import 'package:diet_app/controller/add_more_items_controller.dart';
import 'package:diet_app/features/home/addItem/create_item_screen.dart';
import 'package:diet_app/widgets/custome_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AddMoreItemsScreen extends StatefulWidget {
  const AddMoreItemsScreen({super.key});

  @override
  State<AddMoreItemsScreen> createState() => _AddMoreItemsScreenState();
}

class _AddMoreItemsScreenState extends State<AddMoreItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddMoreItemsScreenController>(
        init: AddMoreItemsScreenController(),
        builder: (controller) {
          return Obx(
            () => Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    Get.back(result: true);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    weight: 10.37.w,
                  ),
                ),
                iconTheme: IconThemeData(
                  color: AppColors.mainAppColor,
                ),
                title: Text(
                  AppTexts.addMoreItems,
                  style: addMoreTitleLeading(),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Get.to(() => const CreateItemScreen()),
                    child: Text(AppTexts.createItem, style: addMoreCreateItem()),
                  ),
                  SizedBox(width: 10.w),
                ],
                bottom: PreferredSize(
                  preferredSize: Size(double.infinity, 60.h),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.colorC9C9C9,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          SizedBox(width: 20.w),
                          SvgPicture.asset(
                            AppImages.search,
                            width: 21.w,
                            height: 21.h,
                          ),
                          SizedBox(width: 10.w),
                          SizedBox(
                            width: 250.w,
                            child: TextField(
                              cursorColor: AppColors.mainAppColor,
                              onChanged: (value) {
                                controller.setSearchQuery(value);
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search item here',
                                  hintStyle: GoogleFonts.inriaSans(
                                    fontSize: 16.sp,
                                    color: AppColors.colorC9C9C9,
                                    fontWeight: FontWeight.normal,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: controller.items.isEmpty
                    ? const Center(
                        child: Text('No Items'),
                      )
                    : controller.searchQuery.value.isEmpty
                        ? ListView.builder(
                            itemCount: controller.items.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onLongPress: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text('Delete Item'),
                                        content: const Text('Are you sure you want to delete this item?'),
                                        actions: [
                                          TextButton.icon(
                                            onPressed: () {
                                              controller.removeItem('items', index);
                                              Get.back();
                                            },
                                            icon: const Icon(Icons.delete),
                                            label: const Text('Delete'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: customeCard(
                                    controller.items[index]['itemImage'],
                                    controller.items[index]['item'],
                                    controller.items[index]['quantity'],
                                    controller.items[index]['calories'],
                                    controller.items[index]['fat'],
                                    controller.items[index]['protein'], () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return SizedBox(
                                        width: double.infinity,
                                        height: 450.h,
                                        child: Column(
                                          children: [
                                            TextButton(
                                              onPressed: () async {
                                                await controller.itemsAddInDay('sun', controller.items[index]);
                                                Get.back();
                                              },
                                              child: const Text('Sun'),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.grey.shade200,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                await controller.itemsAddInDay('mon', controller.items[index]);
                                                Get.back();
                                              },
                                              child: const Text('Mon'),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.grey.shade200,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                await controller.itemsAddInDay('tue', controller.items[index]);
                                                Get.back();
                                              },
                                              child: const Text('tue'),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.grey.shade200,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                await controller.itemsAddInDay('wed', controller.items[index]);
                                                Get.back();
                                              },
                                              child: const Text('Wed'),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.grey.shade200,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                await controller.itemsAddInDay('thu', controller.items[index]);
                                                Get.back();
                                              },
                                              child: const Text('Thu'),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.grey.shade200,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                await controller.itemsAddInDay('fri', controller.items[index]);
                                                Get.back();
                                              },
                                              child: const Text('Fri'),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.grey.shade200,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                await controller.itemsAddInDay('sat', controller.items[index]);
                                                Get.back();
                                              },
                                              child: const Text('Sat'),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.grey.shade200,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                }, Icons.add),
                              );
                            },
                          )
                        : ListView.builder(
                            itemCount: controller.filterItems.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onLongPress: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text('Delete Item'),
                                        content: const Text('Are you sure you want to delete this item?'),
                                        actions: [
                                          TextButton.icon(
                                            onPressed: () {
                                              controller.removeItem('items', index);
                                              Get.back();
                                            },
                                            icon: const Icon(Icons.delete),
                                            label: const Text('Delete'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: customeCard(
                                    controller.filterItems[index]['itemImage'],
                                    controller.filterItems[index]['item'],
                                    controller.filterItems[index]['quantity'],
                                    controller.filterItems[index]['calories'],
                                    controller.filterItems[index]['fat'],
                                    controller.filterItems[index]['protein'], () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return SizedBox(
                                        width: double.infinity,
                                        height: 450.h,
                                        child: Column(
                                          children: [
                                            TextButton(
                                              onPressed: () async {
                                                await controller.itemsAddInDay('sun', controller.items[index]);
                                                Get.back();
                                              },
                                              child: const Text('Sun'),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.grey.shade200,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                await controller.itemsAddInDay('mon', controller.items[index]);
                                                Get.back();
                                              },
                                              child: const Text('Mon'),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.grey.shade200,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                await controller.itemsAddInDay('tue', controller.items[index]);
                                                Get.back();
                                              },
                                              child: const Text('tue'),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.grey.shade200,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                await controller.itemsAddInDay('wed', controller.items[index]);
                                                Get.back();
                                              },
                                              child: const Text('Wed'),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.grey.shade200,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                await controller.itemsAddInDay('thu', controller.items[index]);
                                                Get.back();
                                              },
                                              child: const Text('Thu'),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.grey.shade200,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                await controller.itemsAddInDay('fri', controller.items[index]);
                                                Get.back();
                                              },
                                              child: const Text('Fri'),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.grey.shade200,
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                await controller.itemsAddInDay('sat', controller.items[index]);
                                                Get.back();
                                              },
                                              child: const Text('Sat'),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.grey.shade200,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                }, Icons.add),
                              );
                            },
                          ),
              ),
            ),
          );
        });
  }
}
