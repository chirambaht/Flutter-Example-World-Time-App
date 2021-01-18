import 'package:flutter/material.dart';
import 'package:ninja_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(
        url: 'Europe/London', location: 'London', flag: 'assets/images/uk.png'),
    WorldTime(
        url: 'Europe/Berlin',
        location: 'Athens',
        flag: 'assets/images/greece.png'),
    WorldTime(
        url: 'Africa/Cairo',
        location: 'Cairo',
        flag: 'assets/images/egypt.png'),
    WorldTime(
        url: 'Africa/Nairobi',
        location: 'Nairobi',
        flag: 'assets/images/kenya.png'),
    WorldTime(
        url: 'America/Chicago',
        location: 'Chicago',
        flag: 'assets/images/usa.png'),
    WorldTime(
        url: 'America/New_York',
        location: 'New York',
        flag: 'assets/images/usa.png'),
    WorldTime(
        url: 'Asia/Seoul',
        location: 'Seoul',
        flag: 'assets/images/south_korea.png'),
    WorldTime(
        url: 'Asia/Jakarta',
        location: 'Jakarta',
        flag: 'assets/images/indonesia.png'),
    WorldTime(
        url: 'Africa/Johannesburg',
        location: 'Johannesburg',
        flag: 'assets/images/sa.png'),
    WorldTime(
        url: 'Africa/Johannesburg',
        location: 'Harare',
        flag: 'assets/images/zim.png'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];

    await instance.getTime();

    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
      'url': instance.url
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        title: Text('Choose a location'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(locations[index].flag),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
