import 'package:flutter/material.dart';
import 'package:studentmanagement/model/Student.dart';
import 'package:studentmanagement/screen/display_student_screen.dart';

class StudentSignUp extends StatefulWidget {
  const StudentSignUp({Key? key}) : super(key: key);
  @override
  State<StudentSignUp> createState() => _StudentSignUpState();
}

class _StudentSignUpState extends State<StudentSignUp> {
  String? fname, lname, batch, email;

  List<Student> lstStudent = [];

  _addStudent(Student student) {
    setState(() {
      lstStudent.add(student);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Student Sign Up'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  fname = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                  hintText: 'Enter your first name',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) {
                  lname = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your last name',
                  labelText: 'Last Name',
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) {
                  batch = value;
                },
                decoration: const InputDecoration(
                  labelText: 'Batch',
                  hintText: 'Enter your batch',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) {
                  email = value;
                },
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        _addStudent(Student(
                            fname: fname,
                            lname: lname,
                            batch: batch,
                            email: email));

                        print(lstStudent);
                      },
                      child: const Text('Add Student'))),
              const SizedBox(height: 20),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/view_student',
                            arguments: lstStudent);
                      },
                      child: const Text('View Student'))),
            ],
          ),
        ));
  }
}
