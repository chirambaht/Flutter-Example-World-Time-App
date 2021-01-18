import 'package:flutter/material.dart';
import 'package:ninja_app/screens/choose_location.dart';
import 'package:ninja_app/screens/home.dart';
import 'package:ninja_app/screens/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
