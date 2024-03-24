import 'package:diet_app/features/home/ui/home_screen.dart';
import 'package:diet_app/features/settings/setting_screen.dart';
import 'package:get/get.dart';

class MainHomeScreenController extends GetxController {
  final currentIndex = RxInt(0);
  List screen = [
    const HomeScreen(),
    const SettingScreen(),
  ];
}
