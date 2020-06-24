import 'package:awesome_app/pages/login_page.dart';
import 'package:awesome_app/utils/constants.dart';
import 'package:awesome_app/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePageFB extends StatelessWidget {
  static const String routeName = "/homefb";
  
  Future fetchData() async {
    var url = 'https://jsonplaceholder.typicode.com/photos';
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome App"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Constants.prefs.setBool('loggedIn', false);
                Navigator.pushReplacementNamed(context, LoginPage.routeName);
              })
        ],
      ),
      drawer: MyDrawer(),
      body: FutureBuilder(
        future:fetchData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(child: Text('Fetch something'));
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Center(
                  child: Text('Some error happened'),
                );
              }
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index]['title']),
                    subtitle: Text('ID: ${snapshot.data[index]['id']}'),
                    leading: Image.network(snapshot.data[index]['url']),
                  );
                },
                itemCount: snapshot.data.length,
              );
          }
        },
      ),
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
