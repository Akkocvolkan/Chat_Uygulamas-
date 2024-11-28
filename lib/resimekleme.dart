import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Volkito(),
  ));
}
class Volkito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Container Çalışması'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: Text('Volkan Akkoç'),
      )
      
      )
    ;
  }

}