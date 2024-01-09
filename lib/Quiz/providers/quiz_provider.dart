import 'package:flutter/material.dart';

import '../model/question_model.dart';
class QuizProvider with ChangeNotifier {
  quiz(Question newquestion) {
    notifyListeners();
  }
}
