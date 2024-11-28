import 'package:flutter/material.dart';
import 'package:flutter_application_1/form2.dart';


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
        title: const Text('Pageview Çalışması'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: const Icon(Icons.menu),
      ),
      body: PageView(
        children: const <Widget>[
          Text('Volkan Akkoç'),
          Bahriye(),

        ],
      ),
    );
  }
}