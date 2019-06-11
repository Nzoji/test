import 'package:angosat_educa2/data/expandable.dart';
import 'package:flutter/material.dart';



class Stage2 extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          automaticallyImplyLeading: true,
          title: Text('ELEMENTOS DA MISSÃO ESPACIAL'),
          leading: IconButton(icon:Icon(Icons.arrow_back), onPressed:() => Navigator.pop(context, false),
                              )
          ),
      body: ListView(
        children: <Widget>[
          Card1(
          ),
          Card2(
          ),
          Card3(
          ),
          Card4(
          ),
          Card5(
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

const text1 = "É um corpo que gira em torno de outro corpo. Na etapa seguinte aprofundaremos mais sobre esse elemento da missão espacial.\n\n Um dos benefícios mais importantes da exploração espacial tem sido o desenvolvimento de tecnologia de satélites. Eles colectam informações, e estas informações são enviadas para as estações terrenas.\n\n O satélite está dividido dois módulos que são: módulo da plataforma e módulo da carga útil. A carga útil compreende todos os equipamentos que desempenham a missão e a plataforma garante o suporte da carga útil. ";
const text2 = "É o elemento da missão espacial, usado para transportar satélites em missões não tripuladas e os astronautas em missões tripuladas a partir da superfície da terra para o espaço. Para tal, utiliza-se o seu sistema de propulsão. \n\nEstes lançamentos, normalmente ocorrem em plataformas próprias para a este tipo de actividade, localizadas em terra ou no mar. É de extrema importância salientar que, os locais de lançamento utilizem trajectórias claras para que os veículos de lançamentos não voem sobre áreas povoadas, pois em caso de qualquer falha durante o lançamento, pode ser fatal.";
const text3 = "É composto por infraestruturas localizadas na terra com a finalidade de monitorar e controlar os testes em terra, testes em órbita e a fase de operações do satélite na sua posição orbital.\n\nEste segmento garante o controlo do funcionamento dos sistemas a bordo do satélite através de envios de comandos e recepção de informações de telemetria vindas do satélite. Para que esta missão seja cumprida, existem equipas de especialistas em diferentes áreas que garantem a operação e controlo do satélite ao longo da sua vida útil.\n\n O centro de controlo e missão do Projecto ANGOSAT compreende as equipas seguintes equipas: \n\n• 	Equipa de Supervisão de Operação de Vôo.\n\n• 	Equipa de Análise de subsistemas a bordo.\n\n• 	Equipa de Planeamento de Vôo.\n\n• 	Equipa de Suporte e Navegação Balística.\n\n• 	Equipa do Canal de Serviço.\n\n• 	Equipa de Redes\n\n• 	Equipa de Engenharia.\n\nTodas essas equipas são lideradas pelo Director de Vôo que é o responsável máximo do Centro de Controle e Missão de Satélite.\n\n";



class Card1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    buildImg(String path, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
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
                  Text("A Missão.",
                         style: Theme.of(context).textTheme.body2,
                       ),
                  Text("\n Responde à razão pela qual se vai para o espaço, sendo assim engenheiros estabelecem, cronogramas muito precisos e operações estratégicas para que tudo seja um sucesso",
                         style: Theme.of(context).textTheme.body1,
                       ),
                  Text("\nPrincipais elementos da missão",
                         style: Theme.of(context).textTheme.body2,
                       ),
                  Text("\nOs principais elementos da missão são: o satélite, a órbita e a trajectória, o veículo de lançamento e o segmento terrestre.\n",
                         style: Theme.of(context).textTheme.body1,
                      ),
                   ],
                ),
              ),
            ]
          );
        }

    buildCollapsed2() {
      return buildImg('assets/images/mission_elements.png', 300.0);
      }

    buildCollapsed3() {
      return Container();
    }

    buildExpanded1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("A missão é definida por estes elementos:\n",
                         style: Theme.of(context).textTheme.body2,
                       ),
                  Text("O objetivo, os usuários e as operações",
                         style: Theme.of(context).textTheme.body1,
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
                  child: buildImg('assets/images/clean_space_view.jpg', 200.0)
                  ),
            ],
            ),
          Row(
            children: <Widget>[
              Expanded(
                  child: buildImg('assets/images/user.jpg', 300.0)
                  ),
              Expanded(
                  child: buildImg('assets/images/operation_mission.png', 300.0)
                  ),
              ],
            ),
          ],
        );
    }

    buildExpanded3() {
      return Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("1. Objetivo é o que define o  porquê vamos ao espaço;\n\n2. Usuários, estes são os que se beneficiarão dos serviços da missão;\n\n3. Operações, como estes elementos da missão trabalham todos juntos.", softWrap: true,),
          ],
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
                                          color: Colors.blue
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
                height: 500.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    image: DecorationImage(image: AssetImage('assets/images/angosat1.jpg'), fit: BoxFit.cover),
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
                      "O Satélite.",
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
class Card3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    buildImg(String path, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
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
                  Text("Órbitas e trajectória",
                         style: Theme.of(context).textTheme.body2,
                       ),
                ],
                ),
              ),
          ]
          );
    }

    buildCollapsed2() {
      return buildImg('assets/images/sat_geo.gif', 350.0);
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
                  Text("Órbitas e trajectória\n",
                         style: Theme.of(context).textTheme.body2,
                       ),
                  Text("A órbita é uma trajectória fixa que o satélite descreve no espaço, enquanto que a trajectória é o caminho que um corpo ou objecto em movimento descreve. A altitude da órbita determina o tamanho da cobertura do satélite.",
                         style: Theme.of(context).textTheme.body1,
                       ),
                  Text("\nExistem vários tipos de órbitas que são: ",
                         style: Theme.of(context).textTheme.body2,
                       ),
                  Text("\n\n• Órbita Geostacionária (GEO). \n\n• Órbita de transferência geoestacionária (GTO).\n\n• Órbita baixa. (LEO)\n\n• Órbita média  baixa.(MEO)\n\n• Órbita polares. \n\n• Órbitas síncronas do Sol. \n\n• Órbitas altamente elíptica (HEO).",
                         style: Theme.of(context).textTheme.body1,
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
                  child: buildImg('assets/images/orbits_types.png', 520.0)
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
          children: <Widget>[
            Text("\n\t\tIlustração de algumas órbitas.",
                   style: Theme.of(context).textTheme.caption,
                 ),
          ],
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
                                          color: Colors.blue
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
class Card4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        child: ExpandableNotifier(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 350.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    image: DecorationImage(image: AssetImage('assets/images/proton.jpg'), fit: BoxFit.cover),
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
                      "Veículo de lançamento.",
                      style: Theme
                          .of(
                          context
                          )
                          .textTheme
                          .body2,
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
class Card5 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        child: ExpandableNotifier(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 400.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    image: DecorationImage(image: AssetImage('assets/images/mcc_antennas.jpg'), fit: BoxFit.cover),
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
                      "Segmento terrestre.",
                      style: Theme
                          .of(
                          context
                          )
                          .textTheme
                          .body2,
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



