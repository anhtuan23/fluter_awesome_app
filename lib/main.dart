import 'package:flutter/material.dart';

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
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
              ),
            ],
            gradient: LinearGradient(
              colors: [Colors.red, Colors.amber],
            ),
          ),
          height: 100,
          child: Text(
            'I am a box',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
