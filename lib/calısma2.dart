import 'package:flutter/material.dart';

void main(){

  runApp(const MaterialApp(
    home: Volkito(),

    
  ));
    
  
}

class Volkito extends StatelessWidget{
  const Volkito({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hatice Akkoç'),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        leading:const Text('Sedat Akkoç')
        ,
      ),
      body:const Center(
        child: Text('Kardelen Akkoç'),
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){},
      child: const Text('+'),
      ),
    );
  }
}