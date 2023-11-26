// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 251, 251),
        body: Column(
          children: [
            Header(),
            Expanded(
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SerachBox(),
                      Divider(), //sınır çizgisi ekledi
                      TopLocations(),
                      Divider(),
                      NearLocations(),
                      Divider(),
                      Suggestions(),
                      TopRated(),
                    ],
                  ),
                ),
              ),
            ),
            BottomMenu(),
          ],
        ),
      ),
    );
  }

  Widget TopRated() => Container(
        child: Column(
          children: [
            TitleItem("Top Rated", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/post1.jpeg", "1. Boğaz Köprüsü", "7 km from you", "₺ 8.0"),
                  LocationItem("assets/images/post2.jpeg", "2. Boğaz Köprüsü", "8 km from you", "₺ 10.0"),
                  LocationItem("assets/images/post3.jpeg", "3. Boğaz Köprüsü", "9 km from you", "₺ 25.0"),
                  LocationItem("assets/images/post4.jpeg", "Galata Köprüsü", "10 km from you", "₺ 0"),
                  LocationItem("assets/images/post5.jpeg", "Halıcıoğlu Köprüsü ", "11 km from you", "₺ 0"),
                  ],
              ),
            ),
          ],
        ),
      );

  Widget Suggestions() => Container(
        child: Column(
          children: [
            TitleItem("Suggestions", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/post1.jpeg", "1. Boğaz Köprüsü", "7 km from you", "₺ 8.0"),
                  LocationItem("assets/post2.jpeg", "2. Boğaz Köprüsü", "8 km from you", "₺ 10.0"),
                  LocationItem("assets/post3.jpeg", "3. Boğaz Köprüsü", "9 km from you", "₺ 25.0"),
                  LocationItem("assets/post4.jpeg", "Galata Köprüsü", "10 km from you", "₺ 0"),
                  LocationItem("assets/post5.jpeg", "Halıcığlu Köprüsü ", "11 km from you", "₺ 0"),
                  ],
              ),
            ),
          ],
        ),
      );
  Widget NearLocations() => Container(
        child: Column(
          children: [
            TitleItem("Near You", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/post1.jpg", "1. Boğaz Köprüsü", "7 km from you", "₺ 8.0"),
                  LocationItem("assets/post2.jpg", "2. Boğaz Köprüsü", "8 km from you", "₺ 10.0"),
                  LocationItem("assets/post3.jpg", "3. Boğaz Köprüsü", "9 km from you", "₺ 25.0"),
                  LocationItem("assets/post4.jpg", "Galata Köprüsü", "10 km from you", "₺ 0"),
                  LocationItem("assets/post5.jpg", "Halıcıoğlu Köprüsü ", "11 km from you", "₺ 0"),
                  ],
              ),
            ),
          ],
        ),
      );

  Widget LocationItem(String photo, String title, String description, String price) => Container(
        width: 165,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(15, 170, 170, 170),
          ),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(width: 150, photo),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 56, 56, 56),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 8,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(236, 125, 87, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      price,
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                      ),
                    )),
              ],
            )
          ],
        ),
      );

  Widget TopLocations() => Container(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TitleItem("Top Location", "View all"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StoryItem("assets/p1.jpeg", "Gülseren"),
                StoryItem("assets/p2.jpeg", "Aslı"),
                StoryItem("assets/p3.jpeg", "Yiğit"),
                StoryItem("assets/p4.jpeg", "Emir"),
                StoryItem("assets/p5.jpeg", "Aras"),
                StoryItem("assets/p6.jpeg", "Asya"),
                StoryItem("assets/p1.jpeg", "Esma"),
                StoryItem("assets/p2.jpeg", "Ecem"),
                StoryItem("assets/p3.jpeg", "Özlem"),
                StoryItem("assets/p4.jpeg", "Almira"),
                StoryItem("assets/p5.jpeg", "Ayliz"),
                StoryItem("assets/p6.jpeg", "Eren"),
                StoryItem("assets/p2.jpeg", "Kerem"),
                StoryItem("assets/p3.jpeg", "Ali"),
                StoryItem("assets/p4.jpeg", "Eda"),
                StoryItem("assets/p5.jpeg", "İlknur"),
              ],
            ),
          ),
        ]),
      );

  Widget SerachBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(15, 170, 170, 170),
          ),
          borderRadius: BorderRadius.circular(22),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Icon(Icons.location_on, size: 17, color: Colors.grey),
              SizedBox(
                width: 10,
              ),
              Text(
                "Caferağa, Kadıköy",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Icon(Icons.tune, size: 17, color: Color.fromRGBO(236, 125, 87, 1)),
        ]),
      );

  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 241, 156, 101),
                Color.fromARGB(255, 233, 92, 70),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 32,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  Padding TitleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Top Walkers",
            style: TextStyle(
              color: Color.fromARGB(255, 56, 56, 56),
              fontSize: 16,
              //fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 14,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget Header() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome, K1",
                style: TextStyle(
                  color: Color.fromARGB(255, 153, 153, 153),
                  fontSize: 14,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Explore İstanbul City",
                style: TextStyle(
                  color: Color.fromARGB(255, 56, 56, 56),
                  fontSize: 16,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(Icons.sunny,
                    color: Color.fromRGBO(236, 125, 87, 1), size: 18),
              ),
              SizedBox(width: 3),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(6.0),
                child: Icon(Icons.notifications, size: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget BottomMenu() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 243, 243, 243),
          width: 1,
        ),
      ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomMenuItem("Home", Icons.home, true),
          BottomMenuItem("Moments", Icons.groups, false),
          HighLightedItem("Book", Icons.maps_ugc),
          BottomMenuItem("Chat", Icons.forum, false),
          BottomMenuItem("Profil", Icons.person, false),
        ],
      ),
    );
  }

  Widget BottomMenuItem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(174, 174, 178, 1);

    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 25,
            color: renk,
          ),
          SizedBox(height: 3),
          Text(title,
              style: TextStyle(
                fontSize: 10,
                color: renk,
              )),
        ],
      ),
    );
  }

  Widget HighLightedItem(String title, IconData icon) {
    var renk = Color.fromRGBO(236, 125, 87, 1);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 32,
            color: renk,
          ),
          SizedBox(height: 3),
          Text(title,
              style: TextStyle(
                fontSize: 10,
                color: renk,
              )),
        ],
      ),
    );
  }
}
