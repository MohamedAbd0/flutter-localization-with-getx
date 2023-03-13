import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../helper/shared_pref.dart';

class AppLanguage extends GetxController {
  Locale appLocale = const Locale('en');

  @override
  void onInit() async {
    super.onInit();
    final cachedLanguageCode = SharedPrefHelper.getCachedLanguage();
    appLocale = Locale(cachedLanguageCode);
    Get.updateLocale(appLocale);
  }

  void changeLanguage(String languageCode) async {
    appLocale = Locale(languageCode);
    await SharedPrefHelper.cacheLanguage(languageCode);
    await Get.updateLocale(appLocale);
    update();
  }
}
