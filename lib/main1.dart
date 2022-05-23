import 'package:flutter/material.dart';
import 'dart:math';

Random random = new Random();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewHome(),
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
    );
  }
}

class ListViewHome extends StatelessWidget {
  var date = DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galery'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(20, (index) {
          return Container(
            child: Card(
              color: Colors.deepPurpleAccent,
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://i.ibb.co/3smkgkG/Whats-App-Image-2022-05-23-at-11-42-21.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: ListTile(
                  title: Text(
                    '${random.nextInt(31) + 1}' + '/' + '${random.nextInt(12) + 1}' + '/' + date.year.toString(),
                    style: TextStyle(color: Colors.black, fontSize: 24.0),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
