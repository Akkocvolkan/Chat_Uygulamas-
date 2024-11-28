import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Mucahit(),
  ));
}

class Mucahit extends StatefulWidget {
  @override
  State<Mucahit> createState() => _MucahitState();
}

class _MucahitState extends State<Mucahit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        

      ),
      drawer: Drawer(
        padding
        child: ListView(
          children: <Widget>[
            DrawerHeader (
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child: Text('Menü',style: TextStyle(
                fontSize: 24,
                color: Colors.white
              ),)),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Ana Sayfa'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Ayarlar'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Çikiş Yap'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
          ],
        ),
      ),
    );
  }
}
