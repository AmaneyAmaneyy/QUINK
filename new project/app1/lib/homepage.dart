import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  List categories = [
    {"iconname": Icons.laptop, "title": "laptop"},
    {"iconname": Icons.phone_android_outlined, "title": "mobile"},
    {"iconname": Icons.electric_bike, "title": "bike"},
    {"iconname": Icons.card_giftcard_outlined, "title": "gifts"},
    {"iconname": Icons.electric_car_outlined, "title": "car"},
    {"iconname": Icons.headphones, "title": "headphon"},
    {"iconname": Icons.umbrella, "title": "umbrella"},
  ];
  List items = [
    {
      "image": "images/OIP.webp",
      "title": "watch R1",
      "subtitle": "description",
      "price": "350\$",
    },
    {
      "image": "images/r2.webp",
      "title": "headphone",
      "subtitle": "description",
      "price": "790\$",
    },
    {
      "image": "images/R.ipg",
      "title": "mouse Z13",
      "subtitle": "description",
      "price": "75\$",
    },
    {
      "image": "images/R.png",
      "title": "sumsung A16",
      "subtitle": "description",
      "price": "150\$",
    },
  ];
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "search",
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.menu),
                ),
              ],
            ),
            Container(height: 30),
            Text(
              "categorise",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            Container(height: 20),
            Container(
              height: 100,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,

                itemBuilder: (context, i) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(categories[i]["iconname"], size: 40),
                          padding: EdgeInsets.all(15),
                        ),
                        Text(
                          categories[i]["title"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Best Selling",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            GridView.builder(
              itemCount: items.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 230,
              ),
              itemBuilder: (context, i) {
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        width: 300,
                        color: Colors.grey[200],
                        child: Image.asset(
                          items[i]["image"],
                          height: 100,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        items[i]["title"],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(height: 2),
                      Text(
                        items[i]["subtitle"],
                        style: TextStyle(color: Colors.grey),
                      ),
                      Container(height: 6),
                      Text(
                        items[i]["price"],
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      Container(height: 2),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
