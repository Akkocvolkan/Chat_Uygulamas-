import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: Hatcik(),
  ));
}

class Hatcik extends StatelessWidget{
  const Hatcik({super.key});

  @override
  Widget build(BuildContext context) {
    var ogrenciler=['Volkan Akkoç','Kardelen Akkoç','Canberk Boyraz','Sercan Boyraz'];
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uygulama'),
        centerTitle: true,
        leading: const Text('MENÜ'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: ogrenciler.length,
              itemBuilder: (BuildContext context,int index){
                return Text(ogrenciler[index]);
              }
              
              )
          ),
          const Center(
            child: Text('Uygulama'),
          ),
        ],
      ),
    );
  }
}