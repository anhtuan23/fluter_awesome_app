import 'package:awesome_app/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var myText = 'My name';
  // TextEditingController _textEditingController = TextEditingController();
  var url = 'https://jsonplaceholder.typicode.com/photos';
  var data;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
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
      body: data != null
          ? ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]['title']),
                  subtitle: Text('ID: ${data[index]['id']}'),
                  leading: Image.network(data[index]['url']),
                );
              },
              itemCount: data.length,
            )
          : Center(child: CircularProgressIndicator()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _textEditingController.text;
          // setState(() {});
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
