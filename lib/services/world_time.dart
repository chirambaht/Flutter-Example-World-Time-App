import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time;
  String flag; // url to asset flag icon
  String url; // endpoint

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get('http://worldtimeapi.org/api/timezone/${this.url}');
      Map data = jsonDecode(response.body);

      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      DateTime now = DateTime.parse(dateTime);
      now = now.add(new Duration(hours: int.parse(offset)));

      this.time = now.toString();
    } catch (e) {
      print(e);
      this.time = 'Could not get a time value';
    }
  }
}
