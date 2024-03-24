import 'package:diet_app/controller/shared_preferences_controller.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final sharedPreferences = Get.put(SharedPreferencesController());
  @override
  void onInit() {
    loadPreferences();
    super.onInit();
  }

  final sun = RxList();
  final mon = RxList();
  final tue = RxList();
  final wed = RxList();
  final thu = RxList();
  final fri = RxList();
  final sat = RxList();

  Future<void> loadPreferences() async {
    sun.value = await sharedPreferences.preferencesGet('sun') ?? [];
    mon.value = await sharedPreferences.preferencesGet('mon') ?? [];
    tue.value = await sharedPreferences.preferencesGet('tue') ?? [];
    wed.value = await sharedPreferences.preferencesGet('wed') ?? [];
    thu.value = await sharedPreferences.preferencesGet('thu') ?? [];
    fri.value = await sharedPreferences.preferencesGet('fri') ?? [];
    sat.value = await sharedPreferences.preferencesGet('sat') ?? [];
  }

  Future<void> removeItem(String key, int index) async {
    await sharedPreferences.removeItem(key, index);
    loadPreferences();
  }
}
