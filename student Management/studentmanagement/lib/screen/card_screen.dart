import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  List<Student> lstStudent = [
    Student(fname: 'John', lname: 'Doe'),
    Student(
      fname: 'John1',
      lname: 'Doe',
    ),
    Student(
      fname: 'John',
      lname: 'Doe',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // displayCard('text1'),
              // displayCard('text2'),

              // for (int i = 0; i < lstStudent.length; i++)
              //   displayCard(lstStudent[i]),
              ...lstStudent.map((student) => displayCard(student)),
            ],
          ),
        ),
      ),
    );
  }
}

Widget displayCard(Student text) {
  return SizedBox(
    height: 200,
    width: double.infinity,
    child: Card(
      color: Colors.amber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/login.jpg',
            ),
          ),
          Center(
            child: Text(text.fname! + ' ' + text.lname!),
          ),
        ],
      ),
    ),
  );
}

class Student {
  String? fname;
  String? lname;
  String? img;

  Student({this.fname, this.lname, this.img});
}
