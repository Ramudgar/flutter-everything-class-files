import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wear/wear.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: WearOSScreen()),
  );
}

class WearOSScreen extends StatefulWidget {
  const WearOSScreen({Key? key}) : super(key: key);

  @override
  State<WearOSScreen> createState() => _WearOSScreenState();
}

class _WearOSScreenState extends State<WearOSScreen> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();
  int result = 0;

  _add() {
    int first = int.parse(firstController.text);
    int second = int.parse(secondController.text);
    setState(() {
      result = first + second;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WatchShape(
      builder: (BuildContext context, WearShape shape, Widget? child) {
        return AmbientMode(builder: (context, mode, child) {
          return Scaffold(
            // appBar: AppBar(
            //   title: const Text('WearOS'),
            // ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  TextFormField(
                    controller: firstController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'first number',
                      hintText: 'enter a number',
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: secondController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'second number',
                      hintText: 'enter a number',
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        _add();
                        Fluttertoast.showToast(
                          msg: 'sum is $result',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.transparent,
                          textColor: Colors.black,
                        );
                      },
                      child: const Text('Add'),
                    ),
                  )
                ]),
              ),
            ),
          );
        });
      },
    );
  }
}
