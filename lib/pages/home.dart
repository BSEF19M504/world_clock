import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isEmpty ? ModalRoute.of(context)!.settings.arguments as Map: data;
    print(data);
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
                Image.network(
                  imageUrl,
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
