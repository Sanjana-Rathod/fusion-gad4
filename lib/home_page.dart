import 'package:flutter/material.dart';
import 'dashboard.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'File Tracking',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            // fontStyle: FontStyle.italic,
            // decorationStyle: TextDecorationStyle.wavy,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 96, 132, 211),
      ),
      body: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Hello"),
    ]);
  }
}
