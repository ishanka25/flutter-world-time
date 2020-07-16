import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time;
  String flag; // img
  String url;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);
    print(data);

    String datetime = data['datetime'];
    String offset = data['utc_offset'];

    print(datetime);

    // Creating a DateTime Object
    DateTime now = DateTime.parse(datetime);
    print(now);

    // Local date time
    now = now.add(Duration(
        hours: int.parse(offset.substring(1, 3)),
        minutes: int.parse(offset.substring(4, 6))));
    print(now);

    time = now.toString();
  }
}
