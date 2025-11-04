import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("simpe"),
        actions: [],
      ),
      body: Center(
        child: Image(
          image: NetworkImage(
            "https://tse1.mm.bing.net/th/id/OIP.Ag_It2vnUtAZlLcIQ9emlAHaEK?cb=12&rs=1&pid=ImgDetMain&o=7&rm=3",
          ),
        ),
      ),
    );
  }
}
