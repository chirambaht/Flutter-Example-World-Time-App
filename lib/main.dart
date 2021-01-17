import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My second application'),
        centerTitle: true,
      ),
      body: Padding(
        child: Text('All over the world'),
        padding: EdgeInsets.all(29.0),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () {},
        backgroundColor: Colors.teal[200],
      ),
    );
  }
}
