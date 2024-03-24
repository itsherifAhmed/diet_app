import 'package:diet_app/controller/home_screen_controller.dart';
import 'package:diet_app/widgets/custome_card.dart';
import 'package:diet_app/widgets/custome_no_deta.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      builder: (controller) {
        return Obx(() => Scaffold(
              body: TabBarView(
                children: [
                  controller.sun.isEmpty
                      ? noDeta()
                      : ListView.builder(
                          itemCount: controller.sun.length,
                          itemBuilder: (context, index) {
                            return customeCard(
                                controller.sun[index]['itemImage'],
                                controller.sun[index]['item'],
                                controller.sun[index]['quantity'],
                                controller.sun[index]['calories'],
                                controller.sun[index]['fat'],
                                controller.sun[index]['protein'], () {
                              controller.removeItem('sun', index);
                            }, Icons.delete);
                          },
                        ),
                  controller.mon.isEmpty
                      ? noDeta()
                      : ListView.builder(
                          itemCount: controller.mon.length,
                          itemBuilder: (context, index) {
                            return customeCard(
                                controller.mon[index]['itemImage'],
                                controller.mon[index]['item'],
                                controller.mon[index]['quantity'],
                                controller.mon[index]['calories'],
                                controller.mon[index]['fat'],
                                controller.mon[index]['protein'], () {
                              controller.removeItem('mon', index);
                            }, Icons.delete);
                          },
                        ),
                  controller.tue.isEmpty
                      ? noDeta()
                      : ListView.builder(
                          itemCount: controller.tue.length,
                          itemBuilder: (context, index) {
                            return customeCard(
                                controller.tue[index]['itemImage'],
                                controller.tue[index]['item'],
                                controller.tue[index]['quantity'],
                                controller.tue[index]['calories'],
                                controller.tue[index]['fat'],
                                controller.tue[index]['protein'], () {
                              controller.removeItem('tue', index);
                            }, Icons.delete);
                          },
                        ),
                  controller.wed.isEmpty
                      ? noDeta()
                      : ListView.builder(
                          itemCount: controller.wed.length,
                          itemBuilder: (context, index) {
                            return customeCard(
                                controller.wed[index]['itemImage'],
                                controller.wed[index]['item'],
                                controller.wed[index]['quantity'],
                                controller.wed[index]['calories'],
                                controller.wed[index]['fat'],
                                controller.wed[index]['protein'], () {
                              controller.removeItem('wed', index);
                            }, Icons.delete);
                          },
                        ),
                  controller.thu.isEmpty
                      ? noDeta()
                      : ListView.builder(
                          itemCount: controller.thu.length,
                          itemBuilder: (context, index) {
                            return customeCard(
                                controller.thu[index]['itemImage'],
                                controller.thu[index]['item'],
                                controller.thu[index]['quantity'],
                                controller.thu[index]['calories'],
                                controller.thu[index]['fat'],
                                controller.thu[index]['protein'], () {
                              controller.removeItem('thu', index);
                            }, Icons.delete);
                          },
                        ),
                  controller.fri.isEmpty
                      ? noDeta()
                      : ListView.builder(
                          itemCount: controller.fri.length,
                          itemBuilder: (context, index) {
                            return customeCard(
                                controller.fri[index]['itemImage'],
                                controller.fri[index]['item'],
                                controller.fri[index]['quantity'],
                                controller.fri[index]['calories'],
                                controller.fri[index]['fat'],
                                controller.fri[index]['protein'], () {
                              controller.removeItem('fri', index);
                            }, Icons.delete);
                          },
                        ),
                  controller.sat.isEmpty
                      ? noDeta()
                      : ListView.builder(
                          itemCount: controller.sat.length,
                          itemBuilder: (context, index) {
                            return customeCard(
                                controller.sat[index]['itemImage'],
                                controller.sat[index]['item'],
                                controller.sat[index]['quantity'],
                                controller.sat[index]['calories'],
                                controller.sat[index]['fat'],
                                controller.sat[index]['protein'], () {
                              controller.removeItem('sat', index);
                            }, Icons.delete);
                          },
                        ),
                ],
              ),
            ));
      },
    );
  }
}
