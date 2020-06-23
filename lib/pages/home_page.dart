import 'package:awesome_app/my_drawer.dart';
import 'package:flutter/material.dart';

import '../my_card.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = 'My name';
  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: MyCard(myText: myText, textEditingController: _textEditingController),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _textEditingController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
class HomePageState extends State<HomePage> {
  var myText = 'My name';
  TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _textEditingController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
