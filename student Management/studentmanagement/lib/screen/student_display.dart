import 'package:flutter/material.dart';

import '../model/Student.dart';

class DisplayStudent extends StatefulWidget {
  const DisplayStudent({Key? key}) : super(key: key);

  @override
  State<DisplayStudent> createState() => _DisplayStudentState();
}

class _DisplayStudentState extends State<DisplayStudent> {
  @override
  Widget build(BuildContext context) {
    var lstStudent =
        ModalRoute.of(context)!.settings.arguments as List<Student>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Student'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: lstStudent.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title:
                Text(lstStudent[index].fname! + ' ' + lstStudent[index].lname!),
            subtitle: Text(lstStudent[index].batch!),
            trailing: Wrap(
              children: [
                IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      Navigator.pushNamed(context, '/edit_student',
                          arguments: lstStudent[index]);
                    }),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      lstStudent.removeAt(index);
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
