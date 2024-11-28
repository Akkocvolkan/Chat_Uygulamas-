import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: Furkan(),
    debugShowCheckedModeBanner: false,
  ));
}

class Furkan extends StatefulWidget {
  const Furkan({super.key});

  @override
  State<Furkan> createState() => _FurkanState();
}

class _FurkanState extends State<Furkan> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Dersler'),
        centerTitle: true,
        actions: <Widget>[IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => print('Icon\'a basıldı'),
          
          
          
          )
          
          
          
          ],
          


      ),
      body: const Center(
        child: Text('Burası Body Kısmı'),
      ),
    );
  }
}