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
          child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.alternate_email),
              color: Colors.yellow)),
      floatingActionButton: FloatingActionButton(
        child: Text('Click'),
        onPressed: () {},
        backgroundColor: Colors.teal[200],
      ),
    );
  }
}
