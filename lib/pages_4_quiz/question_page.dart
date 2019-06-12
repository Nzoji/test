import 'package:angosat_educa2/data/quiz_data.dart';
import 'package:angosat_educa2/model/answer.dart';
import 'package:angosat_educa2/model/question.dart';
import 'package:flutter/material.dart';
import 'package:angosat_educa2/widget/border_button.dart';
import 'package:angosat_educa2/model/stage.dart';
import 'dart:core';

class QuestionPage extends StatefulWidget {

  final StageType stageType;

  QuestionPage(this.stageType);

  @override
  _QuestionPageState createState() => new _QuestionPageState();

  static void endQuiz() {
    new _QuestionPageState();
  }
}

class _QuestionPageState extends State<QuestionPage> with TickerProviderStateMixin implements QuizActions{

  Question question;
  int scoreCounter = -1;
  List<Question> quiz;
  Widget questionStateWidget;
  Widget backgroundImageWidget;
  Animation<double> scaleAnimation;
  AnimationController scaleController;


  @override
  void initState() {
    super.initState();
    scaleController = new AnimationController(vsync: this, duration: Duration(milliseconds: 175));
    scaleAnimation = new Tween<double>(begin: 1.0, end: 1.20).animate(
        new CurvedAnimation(parent: scaleController, curve: Curves.easeOut)
        );
    quiz = stageQuiz(widget.stageType);
    quiz.shuffle();
    backgroundImageWidget = Container(
      width: double.infinity,
      height: double.infinity,
      child: new Image.asset('assets/images/question_page_image.jpeg', fit: BoxFit.fill),
      );
    rightAnswer(true);
  }

  @override
  void dispose() {
    scaleController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: questionStateWidget,
      );
  }

  @override
  VoidCallback handleAnswer(Answer answer) {
    return (){
      answer.isRight? rightAnswer(false) : wrongAnswer();
    };
  }

  @override
  void rightAnswer(bool init) {
    print('Yeah! Right Answer.');
    if(!init){
      playScaleAnimation();
    }
    setState(() {
      scoreCounter++;
      Question q = nextQuestion;
      if(q == null){
        endQuiz();
      } else {
        question = q;
        questionStateWidget = Stack(
          children: [
            backgroundImageWidget,
            new Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 50.0),
              child: Text('Pontuação:', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600)),
              ),
            new Align(
              alignment: Alignment.topLeft,
              child: new ScaleTransition(
                scale: scaleAnimation,
                child: new Container(
                  height: 30.0,
                  width: 30.0,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 45.0, left: 150.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.blue[800]
                      ),
                  child: new Text('$scoreCounter', textDirection: TextDirection.ltr, style: const TextStyle(color: Colors.white, fontSize: 13.0)),// textoda pontua
                  ),
                ),
              ),
            new Padding(
              padding: const EdgeInsets.only(top: 150.0, right: 20.0, left: 20.0),
              child: Text(question.question, style: TextStyle(color: Colors.blue, fontSize: 15.0, fontWeight: FontWeight.w600), textAlign: TextAlign.left),
              ),
            new Container(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 250.0),
              height: 500.0,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: question.answers.map((Answer answer) {
                  return new BorderButton(answer.text, 50.0, handleAnswer(answer));
                }).toList(),
                ),
              ),
          ],
          );
      }
    });
  }

  void wrongAnswer() {
    print('Sorry! Wrong Answer.');
    setState(() {
      questionStateWidget = new Stack(
        children: [
          backgroundImageWidget,
          new Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 300.0,
            margin: const EdgeInsets.only(top: 200.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('A SUA PONTUAÇÃO É: ', style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
                Text('$scoreCounter', style: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
                Text('Parabéns! Acertou.', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
                Text('\"Não existe tal coisa como problema sem solução\". Sergei Korolev', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
                //Text('Infelizmente Perdeu!', style: TextStyle(color: Colors.black, fontSize: 17.0, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
              ],
              ),
            ),
        ],
        );
    }
             );
  }

  void endQuiz() {
    print('Congratz! You ended.');
    setState(() {
      questionStateWidget = new Stack(
        children: [
          backgroundImageWidget,
          new Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 300.0,
            margin: const EdgeInsets.only(top: 200.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('A SUA PONTUAÇÃO É: ', style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
                Text('$scoreCounter', style: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
                Text('Parabéns! Acertou.', style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
                Text('\"Não existe tal coisa como problema sem solução\". Sergei Korolev', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
              ],
              ),
            ),
          Align(
            alignment: Alignment.bottomCenter,
            child: new Container(
              margin: const EdgeInsets.only(bottom: 100.0),
              ),
            ),
        ],
        );
    });
  }

  playScaleAnimation() async {
    scaleController.forward().whenComplete((){
      scaleController.reverse();
      setState(() {

      });
    });
  }

  int _currentQuestionIndex = -1;
  Question get nextQuestion {
    _currentQuestionIndex++;
    return _currentQuestionIndex >= quiz.length ? null : quiz[_currentQuestionIndex];
  }

}

