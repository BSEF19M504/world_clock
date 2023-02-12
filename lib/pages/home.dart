import 'package:flutter/material.dart';
import 'package:flutter_image/flutter_image.dart';

import '../services/world_time.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {
    if(data.isEmpty) {
      WorldTime instance = WorldTime(location: "Karachi, Pakistan", flag: "https://countryflagsapi.com/png/PK", utc: "+05:00");
      data = {
        "location": instance.location,
        "flag": instance.flag,
        "time": instance.time,
        "isDayTime": instance.isDayTime
      };
    }
    String bgImage = data["isDayTime"] ? "day.png" : "night.png";
    String imageUrl = data["flag"];
    Color color = Colors.white70;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/$bgImage"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: () async {
                    dynamic result = await Navigator.pushNamed(context, "/location");
                    setState(() {
                      data = {
                        "time": result["time"],
                        "location": result["location"],
                        "flag": result["flag"],
                        "isDayTime": result["isDayTime"]
                      };
                    });
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: color,
                  ),
                  label: Text(
                      "Edit Location",
                    style: TextStyle(
                      color: color,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image(
                  image: NetworkImageWithRetry(imageUrl),
                  width: 80,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(data["location"],
                      style: TextStyle(
                        fontSize: 28,
                        letterSpacing: 2,
                        color: color,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(data["time"],
                  style: TextStyle(
                    fontSize: 40,
                    color: color,
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
