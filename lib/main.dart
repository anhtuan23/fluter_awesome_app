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
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Do Tuan Anh'),
              accountEmail: Text('dotuananh.dta@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1587613755309-e8293efe70f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Do Tuan Anh'),
              subtitle: Text('Developer'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Contact'),
              subtitle: Text('dotuananh.dta@gmail.com'),
              trailing: Icon(Icons.share),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              trailing: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
