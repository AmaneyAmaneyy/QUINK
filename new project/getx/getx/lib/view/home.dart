import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/instance_manager.dart';
// ignore: unnecessary_import
import 'package:get/route_manager.dart';
import 'package:getx/controller/homecontroller.dart';
import 'package:getx/local/local.dart';
//import 'package:get/route_manager.dart';
//import 'package:getx/view/pageone.dart';
// ignore: unused_import
//import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final Homecontroller controller = Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    Mylocalcontroller controllerlamg = Get.find();
    return Scaffold(
      appBar: AppBar(title: Text("1".tr)),
      //: Colors.cyan,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      onPressed: () {
                        controller.increment();
                      },
                      icon: Icon(Icons.add, size: 20),
                    ),
                  ),
                  Center(
                    child: Text(
                      "${controller.counter.value}",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      onPressed: () {
                        controller.decrement();
                      },
                      icon: Icon(Icons.remove, size: 20),
                    ),
                  ),
                  MaterialButton(
                    color: Colors.cyanAccent,
                    textColor: Colors.black,
                    onPressed: () {
                      if (Get.isDarkMode) {
                        Get.changeTheme(ThemeData.light());
                      } else {
                        Get.changeTheme(ThemeData.dark());
                      }
                    },
                    child: Text("them change"),
                  ),

                  MaterialButton(
                    color: Colors.cyanAccent,
                    textColor: Colors.black,
                    onPressed: () {
                      controllerlamg.ChangLang("ar");
                    },
                    child: Text("arabic"),
                  ),
                  MaterialButton(
                    color: Colors.cyanAccent,
                    textColor: Colors.black,
                    onPressed: () {
                      controllerlamg.ChangLang("en");
                    },
                    child: Text("english"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
