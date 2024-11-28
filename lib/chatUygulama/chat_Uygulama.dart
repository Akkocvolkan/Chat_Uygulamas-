import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(Ekocan());
}

class Ekocan extends StatefulWidget{
  @override
  State<Ekocan> createState() => _EkocanState();
}

class _EkocanState extends State<Ekocan> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chat Uygulaması'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Chat(),
      ),

      
    );
    
  }
}

class Chat extends StatefulWidget{
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('chatUygulama').snapshots(),
      builder: (context, snapshot) {
        if(!snapshot.hasData){
          return LinearProgressIndicator();
        }else{
          return buildBody(context,snapshot.data!.docs);
        }
        
      },

    );
    
  }
  
  Widget buildBody(BuildContext context, List<QueryDocumentSnapshot<Object?>> docs) {
    return ListView(
      padding: EdgeInsets.only(top: 20.0),
      children: snapshot.map<Widget>((data)=>BuildListOtem(context,data)).toList(),
    );

  }
}




























































class ChatUygulama {
  String name;
  String email;
  String password;
  DocumentReference? reference;



  ChatUygulama.fromMap(Map <String,dynamic>map,{this.reference})
    :assert(map['name']!=null),assert(map['email']!=null),assert(map['password']!=null),
      name=map['name'],
      email=map['e-mail'],
      password=map['password'];

  ChatUygulama.fromSnapshot(DocumentSnapshot snapshot)
    : this.fromMap(snapshot.data() as Map<String, dynamic>, reference: snapshot.reference);


  }
