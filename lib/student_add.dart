import 'package:flutter/material.dart';
import 'package:flutter_application_1/semih.dart';

import 'package:flutter_application_1/validation.dart';



class studentAdd extends StatefulWidget {
  const studentAdd({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return _studentAddState(); 
  }

}

   
// ignore: camel_case_types


class _studentAddState extends State with StudentValidationMixin{
  var student=Manager();
  var manager =Manager.withoutinfo();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Öğrenci Ekle'),
        centerTitle: true,
      ),
      body:Container(
        margin: const EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: <Widget>[
              buildFirstNameField(),
              buildLastnameField(),
              buildGradeField(),
            ],

          )
          ),
      )
    );
  }
  
  Widget buildFirstNameField() {
    return TextFormField(
                decoration: const InputDecoration(labelText: 'Öğrenci Adı:',hintText: 'Volkan'),
                validator: validateFirstName,
                onSaved: (String? value){
                  student.firstname=value ?? '';
                },
              );
  }
  
  
  Widget buildLastnameField() {
    return TextFormField(
                decoration: const InputDecoration(labelText: 'Öğrenci Adı:',hintText: 'Volkan'),
                validator: validateLastName,
                onSaved: (String? value){
                  student.lastname=value ?? '';
                },
              );
  }
  
  Widget buildGradeField() {
    return TextFormField(
                decoration: const InputDecoration(labelText: 'Öğrenci Adı:',hintText: 'Volkan'),
                validator: validategrade,
                onSaved: (String? value){
                  student.grade=int.parse(value);
                },
              );
  }
}

