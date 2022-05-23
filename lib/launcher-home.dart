import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ri.dart';

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
                image: NetworkImage('https://cdn.pixabay.com/photo/2020/10/04/18/13/mountains-5627143_1280.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            right: 40.0,
            top: 100.0,
            child: Text(date.hour.toString() + ':' + date.minute.toString(), style: TextStyle(color: Colors.white, fontSize: 45.0)),
          ),
          Positioned(
            right: 40.0,
            top: 150.0,
            child: Text("belajar mobile", style: TextStyle(color: Colors.white, fontSize: 16.0)),
          ),
          Positioned(
            bottom: 48.0,
            left: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Iconify(
                    Ri.account_circle_fill,
                    color: Colors.white,
                    size: 45,
                  ), // widget,
                ),
                Container(
                  child: Iconify(
                    Ri.apps_2_line,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
                Container(
                  child: Iconify(
                    Ri.image_fill,
                    color: Colors.white,
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
