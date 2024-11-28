import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Sekme sayısı
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar Örneği'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Ana sayfa', icon: Icon(Icons.home)),
              Tab(text: 'Yıldız', icon: Icon(Icons.star)),
              Tab(text: 'Ayarlar', icon: Icon(Icons.settings)),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menü Başlığı',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Profil'),
                onTap: () {
                  // Profil sayfasına yönlendirme işlemi burada yapılabilir
                  Navigator.pop(context); // Menü kapatılır
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Ayarlar'),
                onTap: () {
                  // Ayarlar sayfasına yönlendirme işlemi burada yapılabilir
                  Navigator.pop(context); // Menü kapatılır
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Çıkış Yap'),
                onTap: () {
                  // Çıkış işlemi burada yapılabilir
                  Navigator.pop(context); // Menü kapatılır
                },
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Sekme 1 İçeriği')),
            Center(child: Text('Sekme 2 İçeriği')),
            Center(child: Text('Sekme 3 İçeriği')),
          ],
        ),
      ),
    );
  }
}
