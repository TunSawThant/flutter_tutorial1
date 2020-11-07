import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      //theme: ThemeData(),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppName"),
        centerTitle: true,
      ),

      ///layout column,Row
      body: Padding(
        //padding: const EdgeInsets.all(8.0),
        padding: EdgeInsets.symmetric(
          vertical: 2.0, /*  horizontal: 10.0 */
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            colorContainer(Colors.yellow, "A"),
            colorContainer(Colors.indigo, "B"),
            colorContainer(Colors.green, "C"),
          ],
        ),
      ),
    );
  }

  Widget colorContainer(Color color, String name) {
    return Container(
      color: color,
      width: 100,
      height: 100,
      child: Center(
        child: Text(
          "I am  $name",
          style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
