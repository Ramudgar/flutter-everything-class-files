import 'package:flutter/material.dart';
import 'package:studentmanagement/model/Student.dart';

class DisplayStudentScreen extends StatefulWidget {
  const DisplayStudentScreen({Key? key}) : super(key: key);

  @override
  State<DisplayStudentScreen> createState() => _DisplayStudentScreenState();
}

class _DisplayStudentScreenState extends State<DisplayStudentScreen> {
  @override
  Widget build(BuildContext context) {
    List<Student> lstStudent =
        ModalRoute.of(context)!.settings.arguments as List<Student>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Display Student'),
        elevation: 0,
        centerTitle: true,
      ),
      // body: Text("total student: ${lstStudent.length}"),
      body: SingleChildScrollView(
        child: Expanded(
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'First_Name',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'Last_Name',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'batch',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'Action',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ],
            rows: lstStudent
                .map((student) => DataRow(cells: [
                      DataCell(Text(student.fname!)),
                      DataCell(Text(student.lname!)),
                      DataCell(Text(student.batch!)),
                      DataCell(
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            setState(() {
                              lstStudent.remove(student);
                            });
                          },
                        ),
                      ),
                    ]))
                .toList(),
          ),
        ),
      ),
    );
  }
}
