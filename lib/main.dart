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
      body: Center(
        child: Text(
          'Hello Ninja',
          style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Syncopate'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () {},
        backgroundColor: Colors.teal[200],
      ),
    );
  }
}
