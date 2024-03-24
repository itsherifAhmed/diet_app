import 'dart:typed_data';

import 'package:diet_app/controller/add_more_items_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CreateItemScreenController extends GetxController {
  final itemController = Rx(TextEditingController());
  final quantityController = Rx(TextEditingController());
  final caloriesController = Rx(TextEditingController());
  final fatController = Rx(TextEditingController());
  final proteinController = Rx(TextEditingController());

  final imageFile = RxString('');
  Uint8List? saveimage;

  final ImagePicker _picker = ImagePicker();

  Future<void> loadDeta() {
    final addMoreItemsScreenController = Get.put(AddMoreItemsScreenController());
    return addMoreItemsScreenController.loadDeta();
  }

  Future<void> pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imageFile.value = pickedFile.path.toString();
    }
  }
}
