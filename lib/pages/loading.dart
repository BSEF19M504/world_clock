import 'package:flutter/material.dart';
import 'package:world_clock/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  late NavigatorState navigator = NavigatorState();
  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: "Karachi", flag: "pakistan.png", url: "Asia/Karachi");
    await instance.getTime();
    navigator.pushReplacementNamed("/home", arguments: {
      "location": instance.location,
      "flag": instance.flag,
      "time": instance.time
    });
  }
  @override
  void initState() {
    super.initState();
    navigator =Navigator.of(context);
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text("loading"),
      ),
    );
  }
}
