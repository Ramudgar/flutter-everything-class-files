import 'package:flutter/material.dart';
import 'package:studentmanagement/screen/StudentEntry_Screen.dart';
import 'package:studentmanagement/screen/card_screen.dart';
import 'package:studentmanagement/screen/display_student_screen.dart';
import 'package:studentmanagement/screen/student_display.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // '/': (context) => const StudentSignUp(),
        '/': (context) => const CardScreen(),
        // '/view_student':(context) => const DisplayStudentScreen()
        // '/view_student': (context) => const DisplayStudent()
      },
    ),
  );
}
