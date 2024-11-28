import 'dart:async';

import 'package:flutter_application_1/pattern/data/question_service.dart';
import 'package:flutter_application_1/pattern/models/questions.dart';

class QuestionBloc {
  final questionStreamController=StreamController.broadcast();
  Stream get getStream=>questionStreamController.stream;

  List<Questions> getAll() {
    return QuestionService.getQuestions();

  }


}
final questionBloc=QuestionBloc();