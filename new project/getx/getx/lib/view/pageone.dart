import 'package:flutter/material.dart';
import 'package:get/get.dart';
// ignore: unnecessary_import
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/view/home.dart';

void main() {
  runApp(PageOne());
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page on"), backgroundColor: Colors.blueGrey),
      backgroundColor: Colors.cyan,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              color: const Color.fromARGB(255, 243, 217, 139),
              textColor: Colors.blueGrey,

              onPressed: () {
                Get.to(Home());
              },
              child: Text("go to home"),
            ),
          ),
        ],
      ),
    );
  }
}
