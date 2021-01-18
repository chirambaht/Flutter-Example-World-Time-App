import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text('Ninja ID'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 0.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('assets/images/alex.jpg'),
                ),
              ),
              Divider(
                height: 40.0,
                color: Colors.blue,
              ),
              Text(
                'NAME',
                style: TextStyle(fontSize: 15.0, color: Colors.grey[350]),
              ),
              Text(
                'Chun-Li',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 35.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(fontSize: 15.0, color: Colors.grey[350]),
              ),
              Text(
                '$ninjaLevel',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                    fontSize: 35.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[300],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'chun-li@ninja.com',
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
