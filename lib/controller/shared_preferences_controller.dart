import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesController extends GetxController {
  Future<String?> preferencesStore(String title, dynamic item) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      List<String>? notes = prefs.getStringList(title) ?? [];
      notes.insert(0, jsonEncode(item));
      prefs.setStringList(title, notes);
      return "Saved";
    } catch (e) {
      return e.toString();
    }
  }

  Future<List?> preferencesGet(String title) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    List<String>? deta = sharedPreferences.getStringList(title);
    List list = [].obs;
    if (deta != null) {
      list = deta.map((draftString) => jsonDecode(draftString)).toList();
      return list;
    }
    return null;
  }

  Future<void> removeItem(String key, int index) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    List<String>? itemList = sharedPreferences.getStringList(key);

    if (itemList != null && index >= 0 && index < itemList.length) {
      itemList.removeAt(index);
      await sharedPreferences.setStringList(key, itemList);
    }
  }
}
