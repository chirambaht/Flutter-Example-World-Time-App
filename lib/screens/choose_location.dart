import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  int counter = 0;

  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState function has been run');
  }

  @override
  Widget build(BuildContext context) {
    print('build function has been run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: Text('Choose a location'),
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Text('Counter is: $counter'),
      ),
    );
  }
}
