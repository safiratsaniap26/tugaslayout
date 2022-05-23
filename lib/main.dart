import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BelajarStackWidget(),
  ));
}

class BelajarStackWidget extends StatefulWidget {
  @override
  _BelajarStackWidgetState createState() => _BelajarStackWidgetState();
}

class _BelajarStackWidgetState extends State<BelajarStackWidget> {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.ibb.co/7nFvsKc/fg.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            right: 230.0,
            top: 100.0,
            child: Text(date.hour.toString() + ':' + date.minute.toString(), style: TextStyle(color: Colors.white, fontSize: 45.0)),
          ),
          Positioned(
            right: 200.0,
            top: 150.0,
            child: Text("Senin, 23 Mei 2022", style: TextStyle(color: Colors.white, fontSize: 16.0)),
          ),
          Positioned(
            bottom: 48.0,
            left: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Icon(
                    Icons.phone,
                    color: Colors.black,
                    size: 45,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.camera,
                    color: Colors.black,
                    size: 45,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
