import 'package:angosat_educa2/model/stage.dart';
import 'package:angosat_educa2/pages_4_quiz/question_page.dart';
import 'package:flutter/material.dart';
import 'package:angosat_educa2/widget/border_button.dart';

class QuizLandingPage3  extends StatefulWidget {
  @override

  _QuizLandingPage3 createState() => new _QuizLandingPage3();
}

class _QuizLandingPage3 extends State<QuizLandingPage3> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: [
          new Container(
            width: double.infinity,
            height: double.infinity,
            child: new Image.asset('assets/images/space.gif', fit: BoxFit.fill),
            ),
          new Align(
            alignment: Alignment.bottomCenter,
            child: new Container(
              height: 250.0,
              width: 300.0,
              margin: const EdgeInsets.only(bottom: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  BorderButton('JOGAR', 50.0, (){
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new QuestionPage(StageType.STAGE3)));
                  }),

                ],
                ),
              ),
            ),
        ],
        ),
      );
  }
}
