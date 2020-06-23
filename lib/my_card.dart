import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key key,
    @required this.myText,
    @required TextEditingController textEditingController,
  })  : _textEditingController = textEditingController,
        super(key: key);

  final String myText;
  final TextEditingController _textEditingController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/bg.jpg',
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            myText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your name",
                  labelText: "Name"),
            ),
          )
        ],
      ),
    );
  }
}
