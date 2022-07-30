import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  final int? value;
  Result({Key? key, this.value}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments as SimpleCalculator;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Center(
          child: Text('${widget.value}'),
        ),
      ),
    );
  }
}
