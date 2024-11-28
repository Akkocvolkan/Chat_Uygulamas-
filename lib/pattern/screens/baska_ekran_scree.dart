import 'package:flutter/material.dart';

class BaskaEkranScree extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Çıkış yeri'),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: Container(
                  margin: EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Öğrenci Adı',
                      hintText: 'Volkan',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ))
              ],
            ),
            Expanded(child: Container(
              margin: EdgeInsets.all(30.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Öğrenci Numarası',
                  hintText: 'Akkoç'
                ),
              ),

            ))
              
             
          ],
        ),
      ),
    );
  }


}