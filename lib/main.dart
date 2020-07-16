import 'package:flutter/material.dart';
import 'package:project_worldtime/pages/choose_location.dart';
import 'package:project_worldtime/pages/home.dart';
import 'package:project_worldtime/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      // context describes the place that we are currently in the tree
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation()
    },
  ));
}
