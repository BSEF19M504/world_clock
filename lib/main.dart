import 'package:flutter/material.dart';
import 'package:world_clock/pages/choose_location.dart';
import 'package:world_clock/pages/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/location': (context) =>ChooseLocation()
    },
  ));
}