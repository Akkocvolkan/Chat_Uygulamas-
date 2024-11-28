import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: Dilara(),
  ));
}



class Dilara extends StatefulWidget {
  const Dilara({super.key});

  @override
  State<Dilara> createState() => _DilaraState();
}

class _DilaraState extends State<Dilara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Volkan'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: const Icon(Icons.menu),
      ),
      body: PageView(
        children: const <Widget>[
          Text('Kardelen Akkoç'),
          Text('Volkan Akkoç')
        ],
      ),
    );
  }
}