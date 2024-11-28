import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Berkay(),

  ));
}

class Berkay extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
       child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar Kullanımı'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          leading: Icon(Icons.menu),
          bottom: TabBar(
            tabs:[
              Tab(text: 'Ana Sayfa',icon: Icon(Icons.home),),
              Tab(text: 'Yıldız',icon: Icon(Icons.star),),
              Tab(text: 'Ayarlar',icon: Icon(Icons.settings),)
            ],),
        ),
        body: TabBarView(
          children:[
            Center(child: Text('Sekme 1 içeriği'),),
            Center(child: Text('Sekme 2 içeriği'),),
            Center(child: Text('Sekme 3 içeriği'),)
          ],),

       )
       
       
       
       
       
       );
  }
}