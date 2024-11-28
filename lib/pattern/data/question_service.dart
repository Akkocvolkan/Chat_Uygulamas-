import 'package:flutter_application_1/pattern/models/questions.dart';

class QuestionService {
  static List<Questions> question=[];


  static QuestionService _singleton=QuestionService._internal();

   factory(){
    return _singleton;

  }

  QuestionService._internal();


  static List<Questions> getQuestions(){
    question.add(Questions('En sevdiğiniz programlama dili hangisidir.',['Python','Flutter','C#','C++'], 'Python'));
    question.add(Questions('En popüler programlama dili hangisidir.',['Python','C#','C++','Flutter'], 'Flutter'));
    question.add(Questions('En sevdiğin hayvan nedir',['Ayı','Arı','Böcek','Kelebek'], 'Kelebek'));
    question.add(Questions('En korktuğun hayvan nedir',['İnek','Öküz','Böcek','Yılan'], 'Yılan'));
    question.add(Questions('Beş sıfır hangi yılda tedavülden kalkmıştır',['2000','2005','2010','2015'], '2005'));
    return question;
  }

}