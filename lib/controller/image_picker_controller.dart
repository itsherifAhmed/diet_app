import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  final imageGeted = Rx<bool>(false);
  final galleryImage = Rx<String>('');
  Future<void> pickImage() async {
    final ImagePicker picker = ImagePicker();
    try {
      var image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        galleryImage.value = image.toString();
        update();
      }
      imageGeted.value = true;
    } catch (e) {
      rethrow;
    }
  }
}
