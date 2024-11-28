import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_Page/main.dart';


class LoginRegisterPage extends StatefulWidget {
  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  final TextEditingController _emailcontroller=TextEditingController();
  final TextEditingController _passwordcontroller=TextEditingController();
  String? errormessage;
  bool isLogin=true;


  Future <void> createUser()async{
    try{
      await Auth().CreateUser(email: _emailcontroller.text, password: _passwordcontroller.text);

    }on FirebaseAuthException     catch(e){
      setState(() {
        errormessage=e.message;
      });

    }

  }


  Future<void>signIn()async{
    try{
      await Auth().signIn(email:_emailcontroller.text, password: _passwordcontroller.text,);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Kardiyolog()));

    } on FirebaseAuthException     catch (e){
      setState(() {
        errormessage =e.message;
      });

    }

    
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0 ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _emailcontroller,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),

              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller:_passwordcontroller ,
              obscureText:true ,
              decoration: InputDecoration(
                
                
                hintText: 'Password',
                
                border: OutlineInputBorder(),
                
              ),
            ),
            SizedBox(height: 20.0,),
            errormessage !=null ? Text(errormessage!):SizedBox.shrink(),
            ElevatedButton(onPressed: (){
              if(isLogin){
                signIn();

              }else{
                createUser();

              }




            }, child:isLogin ? Text('Login'):Text('Register') ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isLogin = !isLogin;
                });
                
                              },
              
              child: Text('Henüz Hesabınız yok mu ? tıkla '))
        
          ],
        ),
      )
    );
    
  }
}

class Kardiyolog extends StatefulWidget {
  @override
  State<Kardiyolog> createState() => _KardiyologState();
}

class _KardiyologState extends State<Kardiyolog> {
  final FirebaseFirestore _firestore= FirebaseFirestore.instance;
  final TextEditingController _messagecontroller=TextEditingController();
  void _sendMessage()async{
    if(_messagecontroller.text.isNotEmpty){
      await _firestore.collection('dilanketi').add({
        'text':_messagecontroller.text,
        'sender':Auth.CurrentUser?.email,
        'timestamp':FieldValue.serverTimestamp(),
      }
        


      );
      _messagecontroller.clear();
    }

  }
  









  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mesaj Uygulaması'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child:StreamBuilder<QuerySnapshot>(
              stream:_firestore.collection('dilanketi').orderBy('timestamp',descending: true).snapshots() ,
              builder: (context,snapshot){
                if(!snapshot.hasData){
                  return Center(child: CircularProgressIndicator());

                }
                final messages=snapshot.data!.docs;
                return ListView.builder(
                  reverse: true,
                  itemCount: messages.length,
                  itemBuilder: (context,Index){
                    final message=messages[Index];
                    final text=message['text'];
                    final sender=message['sender'];
                    final currentUser=Auth.CurrentUser?.email;


                    return ListTile(
                      title: Text(text),
                      subtitle: Text(sender),
                      trailing: sender==currentUser
                      ? Icon(Icons.check,color: Colors.green,)
                      :null,


                      

                    );


                  });




              },
              
              
              
              
              
              )
            
            
            
            
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child:TextField(
                      controller: _messagecontroller,
                      decoration: InputDecoration(
                        hintText: 'Mesaj Yazın....',
                        border: OutlineInputBorder(),


                      ),
                      
                    ),
                    
                    
                  ),
                  IconButton(onPressed: _sendMessage, icon: Icon(Icons.send))
                ],
              ),
              )
        ],
      ),
    );
    
  }
}








    