import 'package:angosat_educa2/pages_4_quiz/quiz_landing_pages/quiz_landing_page1.dart';
import 'package:angosat_educa2/pages_4_quiz/quiz_landing_pages/quiz_landing_page2.dart';
import 'package:angosat_educa2/pages_4_quiz/quiz_landing_pages/quiz_landing_page3.dart';
import 'package:angosat_educa2/pages_4_quiz/quiz_landing_pages/quiz_landing_page4.dart';
import 'package:angosat_educa2/pages_4_quiz/quiz_landing_pages/quiz_landing_page5.dart';
import 'package:angosat_educa2/stages/stage1.dart';
import 'package:angosat_educa2/stages/stage2.dart';
import 'package:angosat_educa2/stages/stage3.dart';
import 'package:angosat_educa2/stages/stage4.dart';
import 'package:angosat_educa2/stages/stage5.dart';
import 'package:flutter/material.dart';


class Second extends StatelessWidget {


  @override
  Widget build(BuildContext context){
    return new SingleChildScrollView(
      child: new Column(
        children: <Widget>[
          // Card number 1
          new Card(
            color: Color(0xFFE3F2FD),
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Image.asset(
                  'assets/images/stage1.jpg',
//                  height: 192.0,
                  fit: BoxFit.fill,
                  ),
                const ListTile(
                  //title: const Text.rich(TextSpan(text:'CULTURA ESPACIAL',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),style: TextStyle(fontSize: 25.0)),
                  subtitle: const Text.rich(TextSpan(text: "\nO entendimento sobre o mundo, é em parte o resultado do conhecimento que a visão permite alcançar. Mas o homem, ousou olhar para além das fronteiras da terra.",style: TextStyle(color: Colors.black))),
                  ),
                new ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: new ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new FlatButton(
                          child: const  Text('LER'),
                          onPressed: () {
                            Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Stage1()));
                          }),
                      new FlatButton(
                        child: const  Text('TESTE O QUE APRENDEU'),
                        onPressed: () {
                          Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new QuizLandingPage1()));
                        },
                        ),
                    ],
                    ),
                  ),
              ],
              ),
            ),
          new Card(
            // Card number 2
            color: Color(0xFFE3F2FD),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Image.asset(
                    'assets/images/stage2.jpg',
//                  height: 192.0,
                    fit: BoxFit.fill,
                    ),
                  const ListTile(
                    //title: const Text.rich(TextSpan(text:'ELEMENTO DA MISSÃO ESPACIAL',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),style: TextStyle(fontSize: 25.0)),
                    subtitle: const Text.rich(TextSpan(text: "\nPara existir uma missão espacial é necessário que exista motivos para tal, estes motivos definem o objectivo e os elementos da missão.",style: TextStyle(color: Colors.black))),
                    ),
                  new ButtonTheme.bar(
                    // make buttons use the appropriate styles for cards
                    child: new ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new FlatButton(
                          child: const  Text('LER'),
                          onPressed: () {Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Stage2()));},
                          ),
                        new FlatButton(
                          child: const  Text('TESTE O QUE APRENDEU'),
                          onPressed: () {   Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new QuizLandingPage2()));},
                          ),
                      ],
                      ),
                    ),
                ],
                ),
            ),
          new Card(
            // Card number 3
            color: Color(0xFFE3F2FD),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Image.asset(
                    'assets/images/stage3.jpg',
//                  height: 192.0,
                    fit: BoxFit.fill,
                    ),
                  const ListTile(
                    //title: const Text.rich(TextSpan(text:'SATÉLITES',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),style: TextStyle(fontSize: 25.0)),
                    subtitle: const Text.rich(TextSpan(text: "\nExistem muitos tipos de satélites, cada um com diferente propósito e agrupados em diferentes categorias.",style: TextStyle(color: Colors.black))),
                    ),
                  new ButtonTheme.bar(
                    // make buttons use the appropriate styles for cards
                    child: new ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new FlatButton(
                          child: const  Text('LER'),
                          onPressed: () {Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Stage3()));},
                          ),
                        new FlatButton(
                          child: const  Text('TESTE O QUE APRENDEU'),
                          onPressed: () {  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new QuizLandingPage3())); },
                          ),
                      ],
                      ),
                    ),
                ],
                ),
            ),

          new Card(
            // Card number 4
            color: Color(0xFFE3F2FD),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Image.asset(
                    'assets/images/stage4.jpg',
//                  height: 192.0,
                    fit: BoxFit.fill,
                    ),
                  const ListTile(
                    //  title: const Text.rich(TextSpan(text:'PEQUENOS SATÉLITES',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),style: TextStyle(fontSize: 25.0)),
                    subtitle: const Text.rich(TextSpan(text: "\nPequenos satélites ou satélites miniaturizados são satélites de tamanho pequeno, pouca massa e geralmente abaixo de 500 kg.",style: TextStyle(color: Colors.black))),
                    ),
                  new ButtonTheme.bar(
                    // make buttons use the appropriate styles for cards
                    child: new ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new FlatButton(
                          child: const  Text('LER'),
                          onPressed: () { Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Stage4()));},
                          ),
                        new FlatButton(
                          child: const  Text('TESTE O QUE APRENDEU'),
                          onPressed: () {  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new QuizLandingPage1()));},
                          ),
                      ],
                      ),
                    ),
                ],
                ),
            ),
          new Card(
            // Card number 5
            color: Color(0xFFE3F2FD),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Image.asset(
                    'assets/images/stage5.jpg',
//                  height: 192.0,
                    fit: BoxFit.fill,
                    ),
                  const ListTile(
                    //title: const Text.rich(TextSpan(text:'HISTÓRIA DO PROJECTO ANGOSAT',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),style: TextStyle(fontSize: 25.0)),
                    subtitle: const Text.rich(TextSpan(text: "\nANGOSAT é a denominação de um projecto que é parte integrante do Programa Espacial Nacional (PEN), tendo como foco principal garantir a construção, lançamento e operação de satélites angolanos.",style: TextStyle(color: Colors.black))),
                    ),
                  new ButtonTheme.bar(
                    // make buttons use the appropriate styles for cards
                    child: new ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new FlatButton(
                          child: const  Text('LER'),
                          onPressed: () { Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Stage5()));},
                          ),
                        /*new FlatButton(
                          child: const  Text('TESTE O QUE APRENDEU'),
                          onPressed: () {  Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new QuizLandingPage5()));},
                          ),*/
                      ],
                      ),
                    ),
                ],
                ),
            ),
        ].map((Widget widget) {
          // Add a little space between the widgets
          return new Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: widget,
            );
        }).toList(),
        ),
      );
  }
}


