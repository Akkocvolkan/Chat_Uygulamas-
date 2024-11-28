import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Bahriye(),
  ));
}

class Bahriye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> volkito = ['Sedat', 'Hatice', 'Volkan', 'Kardelen', 'Canberk', 'Sercan'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('İlk Uygulamam'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
        ],
      ),
      body: ListView.builder(
        itemCount: volkito.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(volkito[index]),
            subtitle: Text('Bu bir alt başlık.'),
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://pixabay.com/get/gf8f96e92faeda654fa7cd98e27f41b25a5c45d0e9eeb849618593ac6cd76d4647b9d3b5d88c9a4706b3b304caea263ad.jpg'), // Resim URL'si
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ayarlar',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
            
          ),
        ],
      ),
    );
  }
}
