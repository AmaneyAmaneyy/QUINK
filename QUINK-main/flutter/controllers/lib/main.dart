import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.snackbar('Hello', 'This is a GetX snackbar!');
          },
          child: Text('Show Snackbar'),
        ),
      ),
    );
  }
}
