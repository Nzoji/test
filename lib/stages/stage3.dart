import 'package:angosat_educa2/data/expandable.dart';
import 'package:flutter/material.dart';


class Stage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //ADDING A APPBAR
      appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          automaticallyImplyLeading: true,
          title: Text('SATÉLITES'),
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

const text1 = "Um satélite de comunicação não passa de uma estação repetidora de microondas no espaço. É útil em telecomunicações, rádio, televisão e internet. Geralmente pode encontrar este tipo de satélites em órbitas, com altitude de 36.000 km da superfície da Terra, com o período (o tempo que leva para percorrer a Terra) de aproximadamente 24 horas.Aplicações de Comunicação por Satélite\n\nAplicações de Comunicação por Satélite\n\n\A comunicação por satélite desempenha um papel vital em nossa vida diária.A seguir estão as aplicações de comunicação via satélite:\n\n• Radiodifusão e comunicações de voz\n• Transmissão de TV, como Direct To Home (DTH)\n• Aplicativo da Internet, como o fornecimento de conexão à Internet para transferência de dados";
const text2 = "As principais vantagens dos satélites de navegação são o posicionamento em tempo real e a sincronização de tempo. É por isso que os sistemas de navegação por satélite se tornaram parte integrante da maioria das aplicações, onde a mobilidade é o parâmetro-chave.\nUm satélite de navegação completo e operacional tem 24 satélites na órbita média (MEO). Estes satélites são feitos em seis grupos para que cada grupo contenha quatro satélites. O grupo de quatro satélites é chamado de uma constelação. As constelações são separadas por 60 graus de longitude.\n\nO período orbital de cada satélite é aproximadamente igual a 12h. Assim, todos os satélites giram em torno da Terra duas vezes todos os dias.";
const text3 = "Os satélites de observação da Terra são usados para monitorar o clima, meteorologia, mapeamento geográfico, observação de fenómenos meteorológicos, por exemplo: frentes frias, furacões. \nA previsão destes fenómenos pode salvar milhões de vidas humanas.";
const text4 = "Satélites de pesquisa espacial destinam-se a observações de objectos celestes no nosso sistema solar, rastreiam estrelas remotas e monitoram erupções solares. A medição do campo magnético da Terra, da gravidade, do nível dos oceanos está, nesse contexto, dentre muitas das tarefas deste satélite.";

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
                  Text("O satélite\n",
                         style: Theme.of(context).textTheme.body2,
                       ),
                  Text("O satélite está dividido em módulo da plataforma e módulo da carga útil. No módulo da carga útil são acoplados todos os subsistemas relacionados com a missão o satélite.\nNa plataforma do satélite temos subsistemas responsáveis pelo fornecimento de atitude e controlo orbital, controlo térmico, controle da alimentação eléctrica, comandos e telemetria necessárias para atender a carga útil.\n", style: Theme.of(context).textTheme.body1,
                       ),
                  Text("\nSatélite ANGOSAT e a equipa foto: RSC Energia", style: Theme.of(context).textTheme.caption,softWrap: true,),
                ],
                ),
              ),
          ]
          );
    }

    buildCollapsed2() {
      return buildImg('assets/images/angosat1_team.jpg', 500.0);
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
                  Text("Configuração do satélite\n",
                         style: Theme.of(context).textTheme.body2,
                       ),
                  Text(" A fonte de alimentação principal do satélite provêm dos painéis solares, tendo também as baterias como fonte de alimentação secundária em fase de eclipse ou situação anômala (ONS) dos painéis solares.\n\nDurante o eclipse, duas baterias de longa duração são usadas, os painéis solares são dobrados durante a fase de lançamento.\nDepois do satélite estar em funcionamento na sua posição orbital, todos os painéis solares são expostos a luz do Sol e rodam acompanhando-o através do mecanismo de rotação dos painéis solares para alimentar os subsistemas.\n\n", style: Theme.of(context).textTheme.body1,
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
                  child: buildImg('assets/images/angosat2_2.png',500.0)
                  )
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
            Text("Imagem da configuração do satelite ANGOSAT-2", style: Theme.of(context).textTheme.caption,softWrap: true,),
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
                    image: DecorationImage(image: AssetImage('assets/images/angosat2.png'), fit: BoxFit.cover),
                    ),
                  ),
                ),
              ExpandablePanel(
                tapHeaderToExpand: true,
                header: Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, left: 10
                        ),
                    child: Text(" \n• Comunicação", style: Theme.of(context).textTheme.body2,)
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
                height: 500.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/gps.png'
                            ), fit: BoxFit.cover
                        ),
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
                      " \n• Navegação", style: Theme
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
class Card4 extends StatelessWidget {

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
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/remote_sensing.jpg'
                            ), fit: BoxFit.cover
                        ),
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
                      "\n• Observação da Terra", style: Theme
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
class Card5 extends StatelessWidget {

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
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/hubble.jpg'
                            ), fit: BoxFit.cover
                        ),
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
                      "\n• Pesquisa espacial", style: Theme
                        .of(
                        context
                        )
                        .textTheme
                        .body2,
                      )
                    ),

                collapsed: Text(
                  text4, softWrap: false, overflow: TextOverflow.ellipsis,
                  ),
                expanded: Text(
                  text4, softWrap: true, overflow: TextOverflow.fade,
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

