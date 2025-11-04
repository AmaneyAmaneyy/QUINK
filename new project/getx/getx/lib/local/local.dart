import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class Mylocalcontroller extends GetxController {
  // ignore: non_constant_identifier_names
  void ChangLang(String codelang) {
    Locale locale = Locale(codelang);
    Get.updateLocale(locale);
  }
}
