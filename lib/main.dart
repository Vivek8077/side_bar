// ignore_for_file: unused_field

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _Selected = 0;
  void changeSelected(int index) {
    setState(() {
      _Selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Navigation Bar",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      body: Center(
        child: Text(
          "My Page",
          style: TextStyle(fontSize: 30),
        ),
      ),
      drawer: Container(
        width: 360,
        child: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "images/images00.jpg",
                        ),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage("images/download.png"),
                      height: 70,
                    ),
                    Text(
                      "Flutter Development",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Row(
                      children: [
                        Text(
                          "xyz@gmail.com",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                          size: 25,
                        )
                      ],
                    )
                  ],
                ),
                // child:Column(),
              ),
              ListTile(
                selected: _Selected == 0,
                leading: Icon(
                  Icons.folder,
                  size: 28,
                ),
                title: Text(
                  "My files",
                  style: TextStyle(fontSize: 23),
                ),
                onTap: () {
                  changeSelected(0);
                },
              ),
              ListTile(
                selected: _Selected == 1,
                leading: Icon(
                  Icons.share,
                  size: 28,
                ),
                title: Text(
                  "Shared",
                  style: TextStyle(fontSize: 23),
                ),
                onTap: () {
                  changeSelected(1);
                },
              ),
              ListTile(
                selected: _Selected == 2,
                leading: Icon(
                  Icons.star,
                  size: 28,
                ),
                title: Text(
                  "Starred",
                  style: TextStyle(fontSize: 23),
                ),
                onTap: () {
                  changeSelected(2);
                },
              ),
              new Divider(
                thickness: 3,
                indent: 10,
                endIndent: 10,
              ),
               ListTile(
                selected: _Selected == 3,
                leading: Icon(
                  Icons.upload,
                  size: 28,
                ),
                title: Text(
                  "Upload ",
                  style: TextStyle(fontSize: 23),
                ),
                onTap: () {
                  changeSelected(3);
                },
              ),
               ListTile(
                selected: _Selected == 4,
                leading: Icon(
                  Icons.settings,
                  size: 28,
                ),
                title: Text(
                  "Setting",
                  style: TextStyle(fontSize: 23),
                ),
                onTap: () {
                  changeSelected(4);
                },
              ),
               new Divider(
                thickness: 3,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                selected: _Selected == 5,
                leading: Icon(
                  Icons.info,
                  size: 28,
                ),
                title: Text(
                  "About",
                  style: TextStyle(fontSize: 23),
                ),
                onTap: () {
                  changeSelected(5);
                },
              ), 

            ],
          ),
        ),
      ),
    );
  }
}
