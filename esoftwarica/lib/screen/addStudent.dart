import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';

enum _SelectingGender { male, female, other }

class AddStudent extends StatefulWidget {
  AddStudent({Key? key}) : super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  _SelectingGender? _selectedGender;
  final _formKey = GlobalKey<FormState>();

  final _name = TextEditingController();
  final _age = TextEditingController();
  final _address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 6),
                  TextFormField(
                    controller: _name,
                    onChanged: (value) {
                      setState(() {
                        
                      });
                    },
                    decoration: const InputDecoration(
                        labelText: 'Full Name',
                        hintText: 'Enter student full name',
                        border: UnderlineInputBorder()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Student FullName';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 6),
                  TextFormField(
                    controller: _age,
                    onChanged: (value) {
                      setState(() {
                        // android = double.parse(value);
                      });
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Age',
                      hintText: 'Enter age',
                      border: UnderlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter age';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 18,
                        ),
                        const Text(
                          'Gender',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        ListTile(
                          horizontalTitleGap: 0,
                          title: const Text('Male'),
                          leading: Radio<_SelectingGender>(
                            value: _SelectingGender.male,
                            groupValue: _selectedGender,
                            onChanged: (_SelectingGender? value) {
                              setState(() {
                                _selectedGender = value;
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 0,
                        ),
                        ListTile(
                          horizontalTitleGap: 0,
                          title: const Text('Female'),
                          leading: Radio<_SelectingGender>(
                            value: _SelectingGender.female,
                            groupValue: _selectedGender,
                            onChanged: (_SelectingGender? value) {
                              setState(() {
                                _selectedGender = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          horizontalTitleGap: 0,
                          title: const Text('Other'),
                          leading: Radio<_SelectingGender>(
                            value: _SelectingGender.other,
                            groupValue: _selectedGender,
                            onChanged: (_SelectingGender? value) {
                              setState(() {
                                _selectedGender = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  TextFormField(
                    controller: _address,
                    onChanged: (value) {
                      setState(() {
                        // oop = double.parse(value);
                      });
                    },
                    decoration: const InputDecoration(
                        labelText: 'Address',
                        hintText: 'Enter Address',
                        border: UnderlineInputBorder()),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter address';
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(height: 6),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        child: Text('Save Student'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue, // Background color
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
