import 'package:angosat_educa2/model/answer.dart';
import 'package:angosat_educa2/model/stage.dart';

class Question {

  List<Answer> answers;
  String question;
  int score;
  StageType stage;

  Question( this.question, this.answers, this.score, this.stage);

}