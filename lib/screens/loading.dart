import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ninja_app/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading...';

  void setupWorldTime() async {
    WorldTime current = new WorldTime(
        url: 'Africa/Johannesburg',
        location: 'Cape Town',
        flag: 'assets/images/sa.png');
    await current.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': current.location,
      'flag': current.flag,
      'time': current.time,
      'isDaytime': current.isDaytime,
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SpinKitFoldingCube(
        color: Colors.blue[900],
        size: 100,
      ),
    ));
  }
}
