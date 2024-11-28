import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Facebook(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Facebook extends StatefulWidget {
  @override
  State<Facebook> createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    List<String> students = ['Volkan', 'Kardelen', 'Sedat', 'Hatice'];
    List<int> grades = [50, 60, 70, 80];
    
    return Scaffold(
      appBar: AppBar(
        leading: Text(
          'Facebook',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        title: Text('Uygulama Yapımı'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(students[index][0]), // İlk harfi gösterecek
            ),
            title: Text(students[index]),
            subtitle: Text("Not: ${grades[index]}"),
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menü',
                style: TextStyle(color: Colors.deepOrange, fontSize: 18),
              ),
            ),
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ana Sayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Ayarlar'),
        ],
      ),
    );
  }
}

