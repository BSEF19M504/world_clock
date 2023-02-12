import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time = "";
  String flag;
  String utc;
  bool isDayTime = true;

  WorldTime({required this.location, required this.flag, required this.utc}){
    DateTime now = DateTime.now().toUtc();
    if (utc.startsWith("+")){
      now = now.add(Duration(hours: int.parse(utc.substring(1,3)), minutes: int.parse(utc.substring(4,6))));
    }
    else {
      now = now.subtract(Duration(hours: int.parse(utc.substring(1,3)), minutes: int.parse(utc.substring(4,6))));
    }
    isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
    time = DateFormat.jm().format(now);
  }
}