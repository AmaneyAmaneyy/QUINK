import 'package:app1/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppstate();
}

class _MyAppstate extends State<MyApp> {
  @override
  Widget build(BuildContext Context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
