import 'package:diet_app/controller/home_screen_controller.dart';
import 'package:diet_app/controller/shared_preferences_controller.dart';
import 'package:get/get.dart';

class AddMoreItemsScreenController extends GetxController {
  final homeScreenController = Get.put(HomeScreenController());
  @override
  void onInit() {
    loadDeta();
    super.onInit();
  }

  final sharedPreferences = Get.put(SharedPreferencesController());
  final items = RxList();
  final searchQuery = RxString('');

  void setSearchQuery(String query) {
    searchQuery.value = query;
  }

  List<dynamic> get filterItems {
    if (searchQuery.isEmpty) {
      return items;
    } else {
      return items.where((i) {
        final itemName = i['item'].toString().toLowerCase();
        return itemName.contains(searchQuery.value.toLowerCase());
      }).toList();
    }
  }

  Future<void> loadDeta() async {
    items.value = await sharedPreferences.preferencesGet('items') ?? [];
  }

  Future<void> itemsAddInDay(String title, dynamic item) async {
    await sharedPreferences.preferencesStore(title, item);
    homeScreenController.loadPreferences();
  }

  Future<void> removeItem(String key, int index) async {
    await sharedPreferences.removeItem(key, index);
    loadDeta();
  }
}
