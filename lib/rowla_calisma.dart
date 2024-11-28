import 'package:flutter/material.dart';
import 'package:flutter_application_1/student_add.dart';

void main() {
  runApp(const MaterialApp(
    home: Volkitoo(),
  ));
}

class Volkitoo extends StatefulWidget {
  const Volkitoo({super.key});

  @override
  State<Volkitoo> createState() => _VolkitooState();
}

class _VolkitooState extends State<Volkitoo> {
  List<String> volkan = ['Volkan', 'Kardelen', 'Sedat', 'Hatice'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uygulama'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.menu),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: volkan.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(volkan[index]),
                  subtitle: Text(volkan[index]),
                  trailing: const Icon(Icons.done),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://pixabay.com/get/g32e621f22c06adf7218d08c7a54243fd7cbb87482c59e0278bdf60de5e59f1e0b80c7b3f80e0a462e348f894a1892dc0_640.jpg'),
                  ),
                );
              },
            ),
          ),
          Row(
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Row(
                    children: <Widget>[
                      Icon(Icons.settings),
                      SizedBox(width: 5.0),
                      Text('Ayarlar'),
                    ],
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const studentAdd()));
                  },
                  child: const Row(
                    children: <Widget>[
                      Icon(Icons.home),
                      SizedBox(width: 5.0),
                      Text('Ana Sayfa'),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Ana Sayfa'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Ayarlar'),
        BottomNavigationBarItem(icon: Icon(Icons.done),label: 'Tik işareti'),
      ]),
    );
  }
}



     