import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: Poyraz(),
  ));

}
class Poyraz extends StatefulWidget {
  const Poyraz({super.key});

  @override
  State<Poyraz> createState() => _PoyrazState();
}

class _PoyrazState extends State<Poyraz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Volkito'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        
      ), body: const Text('Burası boş bir sayfa lütfen bir şey ekleyiniz'), 
    );
  }
}