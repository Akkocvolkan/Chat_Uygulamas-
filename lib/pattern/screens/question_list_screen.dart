import 'package:flutter/material.dart';
import 'package:flutter_application_1/pattern/blocksssss/question_bloc.dart';

class QuestionListScreen extends StatefulWidget {
  @override
  State<QuestionListScreen> createState() => _QuestionListScreenState();
}

class _QuestionListScreenState extends State<QuestionListScreen> {
  int questionIndex=0;
  final List questionss=questionBloc.getAll();
  bool? selectedAnswerCorrect;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Quiz Uygulaması'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading: IconButton(onPressed: (){
          gotoNextQuestion();
           
          
        }, icon:Icon(Icons.arrow_forward)),
        actions: <Widget>[
          IconButton(onPressed:(){
            oncekiSoru();
          } , icon:Icon(Icons.arrow_back))
        ],
        

      ),
      body: buildQuestion(),
    );
  }

  buildQuestion() {
    return StreamBuilder(
      initialData: questionBloc.getAll(),
      stream:questionBloc.getStream ,
      builder: (context, snapshot) {
       return snapshot.data.length>0?  buildProductListItems(snapshot):Center(child: Text('Yükleniyor....'),); 
      },
      );
  }
  

  buildProductListItems(AsyncSnapshot snapshot) {
  final questionList=snapshot.data;
  final questionnn=questionList[questionIndex];

  
  

    return Padding(padding: EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('${questionIndex+1}. Soru: ${questionnn.question}',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        SizedBox(height: 20.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: questionnn.options.map<Widget>((options){
            
            return Padding(padding:EdgeInsets.symmetric(vertical: 8.0),
             child: ElevatedButton(
              
              
              
              onPressed:(){
                

              
              

             }, child: Text(options),),
            
            );
          }

          
        ).toList(),






        
    )]),
    
    
    );
  }

  baskaEkran() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Boş Sayfam'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(child: Text('Boş sayfaya geldiniz lütfen geri gidiniz'),),
    );
  }
  
  void gotoNextQuestion() {
    setState(() {
      if(questionIndex<questionss.length-1){
        questionIndex++;
      }else {
        questionIndex=0;
      }
      
    });
  }
  
  void oncekiSoru() {
    setState(() {
      if(questionIndex>0){
        questionIndex--;

      }else{
        questionIndex=questionss.length-1;
      }
    });
  }
  
  
  
  
}
  
  
  
  
  
    

