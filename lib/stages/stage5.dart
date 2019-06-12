import 'package:angosat_educa2/data/expandable.dart';
import 'package:flutter/material.dart';


class Stage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //ADDING A APPBAR
      appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          automaticallyImplyLeading: true,
          title: Text('HISTÓRIA DO PROJECTO ANGOSAT'),
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

const text0 ="O ANGOSAT é um projecto de iniciativa presidencial, resultado de um profundo estudo, feito pela Comissão Interministerial de Coordenação Geral do Projecto de Telecomunicações via Satélite de Apoio Multissectorial (CISAT), sobre a viabilidade da construção, lançamento e operação de um satélite angolano. O estudo, contou com o Consórcio russo, liderado pela empresa ROSOBONEXPORT, RSC Energia (construtora do satélite).";
const text1 ="No ano de 2009, firmou-se o Contrato entre o Governo da República de Angola, representado pelo Ministério das Telecomunicações e das Tecnologias de Informação (MTTI) e a Federação da Rússia, para a Construção, Lançamento e Operação do satélite Angosat-1.";
const text2 = "O Gabinete de Gestão do Programa Espacial Nacional (GGPEN)é o órgão de execução da do Ministério das Telecomunicação, ao qual compete a criação, gestão e manutenção da instituição que integra o Programa Nacional Espacial, bem como, a existência de condições de acompanhamento da produção, lançamento e operacionalização em órbita do satélite angolano ANGOSAT.";
const text3 = "A zona identificada para a construção do Centro de Controlo e Missão de Satélite (MCC), no município de Cacuaco, comuna da Funda no dia 27 de Junho de 2015. A característica argilosa do solo na zona de construção, exigiu o recurso de soluções de engenharia para que se procedesse a substituição do mesmo, de modos a garantir a sustentabilidade da fundação do edifício.";


class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        child: ExpandableNotifier(
          child: Column(
            children: <Widget>[
              const Text.rich(TextSpan(text:'Projecto ANGOSAT\n\n')),
              const Text.rich(TextSpan(text:'"O ANGOSAT é um projecto de iniciativa presidencial, resultado de um profundo estudo, feito pela Comissão Interministerial de Coordenação Geral do Projecto de Telecomunicações via Satélite de Apoio Multissectorial (CISAT), sobre a viabilidade da construção, lançamento e operação de um satélite angolano. O estudo, contou com o Consórcio russo, liderado pela empresa ROSOBONEXPORT, RSC Energia (construtora do satélite).')),
              SizedBox(
                height: 250.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    image: DecorationImage(image: AssetImage('assets/images/projecto_angosat.jpg'), fit: BoxFit.cover),
                    ),
                  ),
                ),
              ExpandablePanel(
                tapHeaderToExpand: true,
                header: Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, left: 10
                        ),
                    child: Text("Integração do satélite com o lançador. Imagem Energia RKK", style: Theme.of(context).textTheme.body2)
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
class Card2 extends StatelessWidget {

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
                  Text("Projecto ANGOSAT", style: Theme.of(context).textTheme.body2,
                       ),
                  Text("\nO ANGOSAT é um projecto de iniciativa presidencial, resultado de um profundo estudo, feito pela Comissão Interministerial de Coordenação Geral do Projecto de Telecomunicações via Satélite de Apoio Multissectorial (CISAT), sobre a viabilidade da construção, lançamento e operação de um satélite angolano. O estudo, contou com o Consórcio russo, liderado pela empresa ROSOBONEXPORT, RSC Energia (construtora do satélite).",
                           style: Theme.of(context).textTheme.body1
                       ),
                ],
                ),
              ),
          ]
          );
    }

    buildCollapsed2() {
      return buildImg('assets/images/cansat_angolano.jpg', 250.0);
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
                  Text("\n", style: Theme.of(context).textTheme.body1,
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
                  child: buildImg('assets/images/lancamento_do_cansat.png', 200.0)
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
                                          color: Colors.deepPurple
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
class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        child: ExpandableNotifier(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 250.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    image: DecorationImage(image: AssetImage('assets/images/satellite_1.gif'), fit: BoxFit.cover),
                    ),
                  ),
                ),
              ExpandablePanel(
                tapHeaderToExpand: true,
                header: Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, left: 10
                        ),
                    child: Text(
                      "Projecto ANGOSAT",
                      style: Theme
                          .of(
                          context
                          )
                          .textTheme
                          .body2,
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
class Card4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        child: ExpandableNotifier(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 150.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    image: DecorationImage(image: AssetImage('assets/images/space_imperatives.gif'), fit: BoxFit.cover),
                    ),
                  ),
                ),
              ExpandablePanel(
                tapHeaderToExpand: true,
                header: Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, left: 10
                        ),
                    child: Text("O Gabinete de Gestão do Programa Espacial Nacional", style: Theme.of(context).textTheme.body2,
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
