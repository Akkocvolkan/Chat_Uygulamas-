import 'package:flutter/material.dart';

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
        title: const Text('Uygulama Listesi'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: const Icon(Icons.menu),

      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),

        child:Column(
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
                )),
                Expanded(child: Container(
                  margin: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Boyraz',
                      border: OutlineInputBorder()
                    ),
                  ),
                ))
              ]
            )
          ],
        ) ,
      ),
    );
  }
}
