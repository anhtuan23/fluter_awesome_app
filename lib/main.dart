import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.green),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Container(
        color: Colors.blue[50],
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              color: Colors.red,
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.yellow,
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.green,
              padding: EdgeInsets.all(8),
              alignment: Alignment.center,
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
