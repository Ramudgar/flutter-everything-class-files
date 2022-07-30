import 'package:esoftwarica/screen/bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>ButtonNavigation() ,

       
      },
    ),
  
  );
}