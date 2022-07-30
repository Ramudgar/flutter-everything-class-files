import 'package:flutter/material.dart';
import 'package:googlemaps/googleMap.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const GoogleMapsScreen(),
      },
    ),
  );
}
