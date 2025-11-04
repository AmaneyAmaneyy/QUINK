import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[700],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                  "https://th.bing.com/th/id/R.8f829da9a5e99e16cdf785b35721d484?rik=DXgAfHOQWSFbVw&pid=ImgRaw&r=0",
                ),
              ),
              Text(
                "اماني",
                style: TextStyle(
                  fontFamily: "RemmKufi",
                  fontSize: 38.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "مبرمج فلاتر",
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 200,
                child: Divider(color: Colors.cyan[100]),
              ),
              Card(
                margin: EdgeInsets.all(10),

                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.cyan),

                  title: Text(
                    "+942272122",
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.all(10),

                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.cyan),

                  title: Text(
                    "mone@gmail.com",
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
