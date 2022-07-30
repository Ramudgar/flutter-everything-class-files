import 'package:flutter/material.dart';

class Meroscreen extends StatefulWidget {
  const Meroscreen({Key? key}) : super(key: key);

  @override
  State<Meroscreen> createState() => _MeroscreenState();
}

class _MeroscreenState extends State<Meroscreen> {
  final _firstController = TextEditingController();
  final _secondController = TextEditingController();

  // int? first, second;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arithmetic"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              const SizedBox(height: 8),
              TextFormField(
                // onChanged: (value) {
                //   first = int.tryParse(value);
                // },
                controller: _firstController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: ' first number',
                  hintText: 'Enter the first number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'field cannot be empty!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                // onChanged: (value) {
                //   second = int.tryParse(value);
                // },

                controller: _secondController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: ' Second number',
                  hintText: 'Enter the second number',
                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value!.isEmpty) {
                    return 'field cannot be empty!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // result = first! + second!;
                        result = int.parse(_firstController.text) +
                            int.parse(_secondController.text);
                      });
                    },
                    child: const Text('Add')),
              ),
              const SizedBox(height: 8),
              Text("Result:$result"),
              const SizedBox(height: 10),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go to dashboard'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OutLineInputBorder {}
