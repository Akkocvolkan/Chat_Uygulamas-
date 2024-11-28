import 'package:flutter/material.dart';
import 'package:flutter_application_1/akito.dart';


void main(){
  runApp(const MaterialApp(
    home: Bahriye(),
    debugShowCheckedModeBanner: false,
  ));
}
class Bahriye extends StatefulWidget {
  const Bahriye({super.key});

  @override
  State<Bahriye> createState() => _BahriyeState();
}

class _BahriyeState extends State<Bahriye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Uygulaması'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: Container(
                  
                  margin: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Öğrenci Adı',
                      hintText: 'Volkan',
                      border: OutlineInputBorder()
                    ),
                  ),
                )),
                Expanded(child: Container(
                  
                  margin: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: ' ',
                      hintText: 'Engin',
                      border: OutlineInputBorder()
                    ),
                  ),
                ))

              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: Container(
                  
                  margin: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Öğrenci Soyadı',
                      hintText: 'Akkoç',
                      border: OutlineInputBorder()
                    ),
                  ),
                )),Expanded(child: Container(
                  width: 150,
                  height: 70,
                  
                  margin: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: '',
                      hintText: 'Akkoç',
                      border: OutlineInputBorder()
                    ),
                  ),
                ))
              ],
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Poyraz()));
            }, child:const Text('Kaydet')),
            
            
            
              
            

          ],
        ),

      ),
    );
  }
}
