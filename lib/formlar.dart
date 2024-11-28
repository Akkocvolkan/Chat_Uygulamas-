import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: Sedat(),

  ));
}
class Sedat extends StatefulWidget {
  const Sedat({super.key});

  @override
  State<Sedat> createState() => _SedatState();
}

class _SedatState extends State<Sedat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Uygulaması'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.menu),
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Expanded(child: Container(
              margin: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Öğrenci Adı',
                  hintText: 'Volkan',
                  border: OutlineInputBorder(),
                  
                ),
              ),
            ))
            
          ],
        ),
        

      ),
      
    );
  }
}