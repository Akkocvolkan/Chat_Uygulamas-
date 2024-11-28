import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: Volkan(),
  ));
}
class Volkan extends StatefulWidget {
  const Volkan({super.key});

  @override
  State<Volkan> createState() => _VolkanState();
}

class _VolkanState extends State<Volkan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.menu),
      ),
      body:const Center(
        child: Column(
          children: <Widget>[
            Text('Volkan Akkoç',style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              letterSpacing: 10,
              color: Colors.deepOrange,

            ),)
          ],
        ),
      ),
    );
  }
}