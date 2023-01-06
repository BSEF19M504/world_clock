import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {
    Response response = await get(Uri.parse("https://worldtimeapi.org/api/timezone/Asia/Karachi"));
    Map data = jsonDecode(response.body);
    //print(data);
    String datetime = data["datetime"];
    String offset = data["utc_offset"];
    print(datetime);
    print(offset);

    // Create a DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset.substring(1,3))));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Loading Screen"),
    );
  }
}
