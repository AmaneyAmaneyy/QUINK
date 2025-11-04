import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:getx/local/local.dart';
//import 'package:getx/local/local.dart';
//import 'package:getx/local/local.dart';
import 'package:getx/view/home.dart';
// ignore: unused_import
import 'package:getx/view/pageone.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(Mylocalcontroller());
    return GetMaterialApp(
      title: "flutter demo",
      theme: ThemeData.dark(),
      locale: Get.deviceLocale,
      //translations: (),
      getPages: [GetPage(name: "/", page: () => Home())],
    );
  }
}
