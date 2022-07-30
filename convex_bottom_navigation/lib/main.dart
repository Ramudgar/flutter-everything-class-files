import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        
        "/": (context) => const HelloConvexAppBar(),
        "/second": (context) => const Hero(),
      },
    );
  }
}

class HelloConvexAppBar extends StatelessWidget {
  const HelloConvexAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello ConvexAppBar')),
      body: const Center(
        child: Text('Hello World'),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: const [
          TabItem(icon: Icons.list),
          TabItem(icon: Icons.calendar_today),
          TabItem(icon: Icons.assessment),
        ],
        initialActiveIndex: 1,
        // ignore: avoid_print
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}

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
