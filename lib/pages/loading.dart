import 'package:flutter/material.dart';
import 'package:world_clock/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  late NavigatorState navigator = NavigatorState();
  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: "Karachi", flag: "pakistan.png", url: "Asia/Karachi");
    while(true){
    //for(int i = 0; i < 5; i++){
      await instance.getTime();
      if (instance.time != "Could not get time data") {
        break;
      }
    }
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
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitCircle(
          color: Colors.white,
          duration: Duration(milliseconds: 1200),
          size: 80.0,
        ),
      ),
    );
  }
}

