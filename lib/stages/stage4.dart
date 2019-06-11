import 'package:angosat_educa2/data/expandable.dart';
import 'package:flutter/material.dart';


class Stage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //ADDING A APPBAR
      appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          automaticallyImplyLeading: true,
          title: Text('PEQUENOS SATÉLITES'),
          leading: IconButton(icon:Icon(Icons.arrow_back), onPressed:() => Navigator.pop(context, false),
                              )
          ),
        //CLOSE OF APP BAR
        body: ListView(
          children: <Widget>[
            Card1(
            ),
            Card2(
            ),
            Card3(
            ),
            Card4(
            )
          ].map(
                  (w) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: 15, left: 15, right: 15,
                    ),
                  child: w,
                  );
              }
                  ).toList(
          ),
          ),
      );
  }
}

const text1 = "O primeiro CANSAT tipicamente angolano, foi criado no âmbito das diferentes sinergias tendo como base de suporte o binómio Gabinete de Gestão do programa Espacial Nacional (GGEPEN) e a academia Nacional. O CANSAT Angolano, é um pico satélite contruído  para propósitos educativos, mediante o qual é possível adquirir experiência em “Montagem, Integração e Testes” munindo o leitor de conhecimentos sobre as funções, arquitectura e integração de cada subsistema que compõe um satélite.";
const text2 = "O HETPA-sat é uma ferramenta de treinamento desenvolvida pelo Prof. Yamazaki, da Universidade Nihon, no Japão, para estudos práticos de engenharia de satélites. Ao fazer um curso com este kit, os alunos podem aprender os subsistemas básicos de satélite, incluindo estrutura, fornecimento de energia elétrica, comando e manipulação de dados, comunicação, estação terrestre e sensores, além de aprender como integrar esses subsistemas para criar um satélite em funcionamento. um todo.";
const text3 = "Um CubeSat é um satélite miniatura em forma de quadrado (10 cm x 10 cm x 10 cm - aproximadamente o tamanho de um cubo de Rubik), pesando cerca de 1 kg. Um CubeSat pode ser usado sozinho (1 unidade) ou em grupos de múltiplas unidades (máximo de 24 unidades).";


class Card1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    buildImg(String path, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.rectangle,
              image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover),
              ),
            )
          );
    }

    buildCollapsed1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("CANSAT\n", style: Theme.of(context).textTheme.body2,
                       ),
                  Text("Um CANSAT  é uma representação de um satélite real, integrado no volume e na forma de um refrigerante de (330 ml). O desafio para os alunos é encaixar todos os principais subsistemas encontrados em um satélite, como energia, sensores e um sistema de comunicação, neste volume mínimo",
                           style: Theme.of(context).textTheme.body1
                       ),
                ],
                ),
              ),
          ]
          );
    }

    buildCollapsed2() {
      return buildImg('assets/images/cansat_angolano.jpg', 550.0);
    }

    buildCollapsed3() {
      return Container();
    }

    buildExpanded1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("É lançado a uma altitude de algumas centenas de metros por um foguete ou largado a partir de um drone ou um balão, e sua missão começa: realizar um experimento científico e conseguir um pouso seguro.\n", style: Theme.of(context).textTheme.body1,
                       ),
                ],
                ),
              ),
          ]
          );
    }

    buildExpanded2() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: buildImg('assets/images/lancamento_do_cansat.png', 550.0)
                  ),

            ],
            ),
        ],
        );
    }

    buildExpanded3() {
      return Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          ),
        );
    }


    return Card(
        clipBehavior: Clip.antiAlias,
        child: ExpandableNotifier(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expandable(
                collapsed: buildCollapsed1(),
                expanded: buildExpanded1(),
                ),
              Expandable(
                collapsed: buildCollapsed2(),
                expanded: buildExpanded2(),
                ),
              Expandable(
                collapsed: buildCollapsed3(),
                expanded: buildExpanded3(),
                ),
              Divider(height: 0.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Builder(
                    builder: (context) {
                      var exp = ExpandableController.of(context);
                      return MaterialButton(
                        child: Text(exp.expanded ? "FECHAR": "ABRIR",
                                      style: Theme.of(context).textTheme.button.copyWith(
                                          color: Colors.indigo
                                          ),
                                    ),
                        onPressed: () {
                          exp.toggle();
                        },
                        );
                    },
                    ),
                ],
                ),
            ],
            ),
          )
        );
  }
}
class Card2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        child: ExpandableNotifier(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 550.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    image: DecorationImage(image: AssetImage('assets/images/cansat.png'), fit: BoxFit.cover),
                    ),
                  ),
                ),
              ExpandablePanel(
                tapHeaderToExpand: true,
                header: Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, left: 10
                        ),
                    child: Text("CANSAT angolano", style: Theme.of(context).textTheme.body2,
                                )
                    ),
                collapsed: Text(
                  text1, softWrap: false, overflow: TextOverflow.ellipsis,
                  ),
                expanded: Text(
                  text1, softWrap: true, overflow: TextOverflow.fade,
                  ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 10.0
                        ),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      ),
                    );
                },
                ),
            ],
            ),
          )
        );
  }
}
class Card3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        child: ExpandableNotifier(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 550.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    image: DecorationImage(image: AssetImage('assets/images/hepta_sat.jpg'), fit: BoxFit.cover),
                    ),
                  ),
                ),
              ExpandablePanel(
                tapHeaderToExpand: true,
                header: Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, left: 10
                        ),
                    child: Text("HETPA-sat\n", style: Theme.of(context).textTheme.body2,
                                )
                    ),
                collapsed: Text(
                  text2, softWrap: false, overflow: TextOverflow.ellipsis,
                  ),
                expanded: Text(
                  text2, softWrap: true, overflow: TextOverflow.fade,
                  ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 10.0
                        ),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      ),
                    );
                },
                ),
            ],
            ),
          )
        );
  }
}
class Card4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        child: ExpandableNotifier(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 550.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    image: DecorationImage(image: AssetImage('assets/images/cubesat.jpg'), fit: BoxFit.cover),
                    ),
                  ),
                ),
              ExpandablePanel(
                tapHeaderToExpand: true,
                header: Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, left: 10
                        ),
                    child: Text("CUBESAT\n", style: Theme.of(context).textTheme.body2,
                                )
                    ),
                collapsed: Text(
                  text3, softWrap: false, overflow: TextOverflow.ellipsis,
                  ),
                expanded: Text(
                  text3, softWrap: true, overflow: TextOverflow.fade,
                  ),
                builder: (_, collapsed, expanded) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: 10.0, right: 10.0, bottom: 10.0
                        ),
                    child: Expandable(
                      collapsed: collapsed,
                      expanded: expanded,
                      ),
                    );
                },
                ),
            ],
            ),
          )
        );
  }
}