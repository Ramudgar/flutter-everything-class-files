import 'package:flutter/material.dart';
import 'dart:math';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  int? firstNumber, secondNumber;
  bool? submit = true;
  int count = 0;
  int correct = 0;
  int incorrect = 0;

  @override
  void initState() {
    super.initState();
    _generateRandomNumbers();
  }

  _generateRandomNumbers() {
    setState(() {
      firstNumber = Random().nextInt(100);
      secondNumber = Random().nextInt(100);
      if (firstNumber == secondNumber) {
        _generateRandomNumbers();
      }
    });
  }

  _checkFirst() {
    if (count < 10) {
      if (firstNumber! > secondNumber!) {
        setState(() {
          correct++;
          count++;
        });
      } else if (firstNumber! < secondNumber!) {
        setState(() {
          incorrect++;
          count++;
        });
      }
      _generateRandomNumbers();
    } else {
      setState(() {
        submit = false;
        return;
      });
    }
  }

  _checkSecond() {
    if (secondNumber! > firstNumber!) {
      setState(() {
        correct++;
      });
    } else {
      setState(() {
        incorrect++;
      });
    }
    if (count > 9) {
      submit = false;
    }
    if (count > 9) {
      submit = false;
    } else {
      _generateRandomNumbers();
      count++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: submit! ? () => _checkFirst() : null,
                    child: Text(firstNumber.toString()),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: submit! ? () => _checkSecond() : null,
                    child: Text(secondNumber.toString()),
                  ),
                ),
                const Divider(thickness: 2),
                if (count > 9)
                  Column(
                    children: [
                      SizedBox(height: 16),
                      Text(
                        'your result',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'correct: $correct',
                        style: const TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'incorrect: $incorrect',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 171, 78, 31),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              count = 0;
                              correct = 0;
                              incorrect = 0;
                              _generateRandomNumbers();
                            });
                          },
                          child: Text('Restart'),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
