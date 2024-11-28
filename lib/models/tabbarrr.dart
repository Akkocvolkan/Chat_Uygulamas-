import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Sedatiko(),
    debugShowCheckedModeBanner: false,
  ));
}

class Sedatiko extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child:Scaffold(

      appBar: AppBar(
        title: Text('TabBar Uygulaması'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: Icon(Icons.menu),
        bottom: TabBar(tabs: [
          Tab(text: 'Ayarlar',icon: Icon(Icons.settings),),
          Tab(text: 'Ana Sayfa',icon: Icon(Icons.home),)
        ]),
        

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child:Text('Menü',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
              
              
              
              
               ),
               ListTile(
                leading: Icon(Icons.home),
                title: Text('Ana sayfa'),
                onTap: (){
                  Navigator.pop(context);
                },
                
               ),
               ListTile(
                leading: Icon(Icons.settings),
                title: Text('Ayarlar'),
                onTap: (){
                  Navigator.pop(context);
                },
               )
        
          ],
        ),
      ),
      body: TabBarView(children: [
        Center(child: Text('Ayarlar sekmesi Açıldı'),),
        Center(child: Text('Ana sayfa sekmesi açıldı'),)
      ]),
    ));
    
  }
}

