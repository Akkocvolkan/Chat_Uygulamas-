import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Test(),
  ));
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Uygulaması'),
        backgroundColor: Colors.deepOrange,
      ),
      body: const Center(
        child: Text('Volkan Akkoç'),
      ),
    );
  }
}

  

