import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({Key? key}) : super(key: key);

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  // int? p, r, t;
  final _p = TextEditingController();
  final _r = TextEditingController();
  final _t = TextEditingController();
  int result = 0;
  final _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
              const SizedBox(height: 8),
              TextFormField(
                // onChanged: (value) {
                //   p = int.tryParse(value);
                // },
                controller: _p,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Principal',
                  hintText: 'Enter the principal',
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
                //   r = int.tryParse(value);
                // },
                controller: _r,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Rate',
                  hintText: 'Enter the rate',
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
                //   t = int.tryParse(value);
                // },
                controller: _t,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Time',
                  hintText: 'Enter the time',
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
                      if (_globalKey.currentState!.validate()) {
                        setState(() {
                          // result = p! * r! * t!;
                          result = int.parse(_p.text) *
                              int.parse(_r.text) *
                              int.parse(_t.text) ~/
                              100;
                        });
                      }
                      // setState(() {
                      //   // result = p! * r! * t! ~/ 100;
                      //   result = int.parse(_p.text) * int.parse(_r.text) * int.parse(_t.text) ~/ 100;
                      // }
                      // );
                    },
                    child: const Text('Calculate')),
              ),
              const SizedBox(height: 8),
              Text("Result: $result"),
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
