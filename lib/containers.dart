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
      body: Container(
        child:Padding(
          padding: EdgeInsets.all(50.0),
          child: const Text('Volkan Akkoç')),
        //padding: EdgeInsets.fromLTRB(40.0, 30.0, 25.0, 15.0),
        //padding: EdgeInsets.only(right: 20.0,left: 25.0),
        //padding: EdgeInsets.symmetric(vertical: 25.0), 
        color: Colors.blue,
        )
      
      )
    ;
  }

}