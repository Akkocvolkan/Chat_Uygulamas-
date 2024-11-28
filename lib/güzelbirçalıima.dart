import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Bahriye(),
    debugShowCheckedModeBanner: false,
  ));
}

class Bahriye extends StatelessWidget {
  List<String> mucahit = ['Volkan', 'Kardelen', 'Sedat', 'Hatice'];

  Bahriye({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uygulama'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: mucahit.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://pixabay.com/tr/photos/image-8351436/'),
                    ),
                    trailing: const Icon(Icons.done),
                    title: Text(mucahit[index]),
                    subtitle: Text(mucahit[index]),
                  );
                },
              ),
            ),
            // Ekle butonu
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Ekleme işlevi burada
                      print('Yeni öğe eklendi.');
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center, // Buton içeriğini ortala
                      children: <Widget>[
                        Icon(Icons.add),
                        SizedBox(width: 5.0),
                        Text('Ekle'),
                      ],
                    ),
                  ),
                  
                ),
                Flexible(
                  fit: FlexFit.tight,
                flex: 1,
                child: ElevatedButton(onPressed: (){}, child: const Row(
                  children: <Widget>[
                    Icon(Icons.update),
                    Text('Güncelle'),
                    SizedBox(width: 5.0,)

                  ],
                ))
                  
                 
                ))
              ],
            ),
          
        ),
      ),
      // BottomNavigationBar ekleniyor
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: 0, // Seçili olan menü öğesini belirtiyor
        onTap: (index) {
          // Menüler arasında geçiş yapmak için onTap işlevi eklenebilir
          print("Seçilen menü: $index");
        },
      ),
    )
  }
}

