import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: SimpleInterest(),
    ),
  );
}

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({Key? key}) : super(key: key);

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  int? p, r, t;
  int result = 0;

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
        child: Column(
          children: [
            const SizedBox(height: 8),
            TextFormField(
              onChanged: (value) {
                p = int.tryParse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Principal',
                hintText: 'Enter the principal',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              onChanged: (value) {
                r = int.tryParse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Rate',
                hintText: 'Enter the rate',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              onChanged: (value) {
                t = int.tryParse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Time',
                hintText: 'Enter the time',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 400,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = p! * r! * t! ~/ 100;
                    });
                  }, child: const Text('Calculate')),
            ),
            const SizedBox(height: 8),
             Text("Result: $result"),
          ],
        ),
      ),
    );
  }
}
