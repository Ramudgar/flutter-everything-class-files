import 'package:flutter/material.dart';

// import 'list_radioButton.dart';
import 'airthmetic.dart';
import 'dashboard.dart';
// import 'add_screen.dart';
import 'simple_interest.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/simple': (context) => const SimpleInterest(),
        '/add': (context) => const SimpleCalculator(),
        // '/game': (context) => const Game(),
      },
    ),
  );
}
