import 'package:flutter/material.dart';

class Hero extends StatelessWidget {
  const Hero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero')),
      body: const Center(
        child: Text('Hello ram'),
      ),
    );
  }
}
