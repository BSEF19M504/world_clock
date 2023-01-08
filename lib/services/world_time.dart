import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location;
  String time = "";
  String flag;
  String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response = await get(Uri.parse("https://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);
      //print(data);
      String datetime = data["datetime"];
      String offset = data["utc_offset"];

      // Create a DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset.substring(1,3))));

      time = now.toString();
    } catch (e) {
      time = "Could not get time data";
    }
  }
}