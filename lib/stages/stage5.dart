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

const text1 = "O ANGOSAT é um projecto de iniciativa presidencial, resultado de um profundo estudo, feito pela Comissão Interministerial de Coordenação Geral do Projecto de Telecomunicações via Satélite de Apoio Multissectorial (CISAT), sobre a viabilidade da construção, lançamento e operação de um satélite angolano. O estudo, contou com o Consórcio russo, liderado pela empresa ROSOBONEXPORT, RSC Energia (construtora do satélite).\n\n No ano de 2009, firmou-se o Contrato entre o Governo da República de Angola, representado pelo Ministério das Telecomunicações e das Tecnologias de Informação (MTTI) e a Federação da Rússia, para a Construção, Lançamento e Operação do satélite Angosat-1 \n\nO acordo de construção foi refeito entre as partes supracitadas em Luanda, no pretérito dia 23 de Abril de 2018, tendo arrancado no dia seguinte, em Moscovo, capital da Rússia, os trabalhos para a construção do Angosat-2 (a ser lançado em 2020), que corresponde a uma versão actualizada do satélite Angosat-1, para compensar o investimento feito na construção do Angosat-1, em órbita desde Dezembro de 2017, mas sem sinal, até à presente data..";
const text2 = "O Gabinete de Gestão do Programa Espacial Nacional (GGPEN)é o órgão de execução da do Ministério das Telecomunicação, ao qual compete a criação, gestão e manutenção da instituição que integra o Programa Nacional Espacial, bem como, a existência de condições de acompanhamento da produção, lançamento e operacionalização em órbita do satélite angolano ANGOSAT.\n\n";

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
                  Text("Estratégia Espacial Nacional", style: Theme.of(context).textTheme.body2,
                       ),
                  Text("\nA Estratégia Espacial da República de Angola 2016-2025 estabelece os objectivos e directrizes geraisque devem reger a actividade espacial em Angola tendo em conta o reconhecimento da importânciavital que a utilização do espaço tem para o desenvolvimento socioeconómico e o posicionamentoestratégico da República de Angola.", style: Theme.of(context).textTheme.body1),
                  Text("\n Plano estratégico nacional 2019/2022.",
                           style: Theme.of(context).textTheme.caption
                       ),
                ],
                ),
              ),
          ]
          );
    }

    buildCollapsed2() {
      return buildImg('assets/images/plano_estrategico_do_ggpen.png', 450.0);
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
                  child: buildImg('assets/images/plano_estrategico_do_ggpen2.png', 500.0)
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
            Text("Imagem das cinco directrizes\n\n", style: Theme.of(context).textTheme.caption,softWrap: true,),
            Text("• Eixo 1: desenvolvimento de uma infra-estrutura espacial – o qual visa assegurar que Angola tem uma rede de recursos e de serviços de satélite estável em diversos domínios que assegure a sua independência tecnológica e em matéria de dados de satélite;\n\n• Eixo 2: capacitação e promoção do sector espacial – o qual tem por finalidade principal agilizar o desenvolvimento e utilização de produtos, serviços e aplicações espaciais, garantindo que a capacitação, formação e divulgação das actividades neste domínio contribui para a criação de capital humano especializado e, nessa sequência, para o desenvolvimento do país;\n\n• Eixo 3: crescimento da indústria e tecnologias espaciais – o qual visa assegurar a iniciativa privada no sector espacial, visando diversificar os investimentos no espaço e contribuir para o desenvolvimento deste sector;\n\n• Eixo 4: afirmação internacional do Estado Angolano no domínio espacial – o qual tem por fim principal garantir que a República de Angola assume um papel de relevância no contexto internacional em matéria espacial, com vista a assegurar que o país contribui para a definição das principais orientações internacionais neste domínio e participa em iniciativas e projectos relevantes;\n\n• Eixo 5: criação interna de estruturas organizativas que assegurem a prossecução dos objectivos pretendidos – o qual tem por finalidade assegurar que a execução das medidas da Estratégia Espacial é efectuada de forma central e coordenada mediante a criação de um ecossistema orgânico que lidere, promova e acompanhe as linhas de acção estratégicas.", style: Theme.of(context).textTheme.body1,softWrap: true,),
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
class Card2 extends StatelessWidget {
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
                    child: Text("Integração do satélite com o lançador. Imagem: Energia RKK", style: Theme.of(context).textTheme.caption)
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
                  Text("Os segmentos do sistema espacial do  projecto ANGOSAT.",
                         style: Theme.of(context).textTheme.body2,
                       ),
                  Text("\n No quadro da indústria espacial, o projecto encontra-se repartido pelos seguintes segmentos:\n\n• Segmento Espacial: Referente a construção de satélites para fins de telecomunicações. Neste momento está em fase de construção, o satélite  ANGOSAT-2;\n\n• Segmento Terrestre: Engloba a construção e apetrechamento do Centro de Controlo e Missão (do inglês MCC), expansão e modernização da rede Infrasat e criação de competências nacionais no domínio das tecnologias espaciais. O perímetro do Programa Espacial Nacional (PEN) ocupa uma área de 52.254m2.\n\nNesta zona, foi construído de raíz um Centro de Controlo e Missão de Satélite, o mesmo ocupa uma área de 2.207m2 dos 6.617m2 da superfície já construída. Trata-se de um edifício de 3 pisos, 47 compartimentos totalmente apetrechados, dotado de sistema de detecção e combate à incêndios, sistema de intrusão (CCTV), sistema de gestão técnica centralizada (BMS) e sistema de extinção de monóxido de carbono.\n\nO MCC é um centro que tecnologicamente representa um marco para Angola e a nível de África, também representa uma infraestrutura imponente no que concerne a actividade de exploração espacial. Foi projectado para funcionar de modo ininterrupto, ou seja, 24/24h e está equipado com sistemas de engenharias que possibilitam a recepção, processamento e o envio de informações para o satélite. Neste centro trabalham os 45 técnicos nacionais, que foram certificados   para operar satélites.\n\n• Segmento de Lançamento: Compreende as logísticas de lançamento, bem como o aluguer da posição orbital e atribuição das frequências de operação.",
                         style: Theme.of(context).textTheme.body1,
                       ),
                  Text("\nElementos da missão",
                         style: Theme.of(context).textTheme.caption,
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
                  Text("Centro de Controle e Missão de Satélites:\n",
                         style: Theme.of(context).textTheme.body2,
                       ),
                  Text("A zona identificada para a construção do Centro de Controlo e Missão de Satélite (MCC), no município de Cacuaco, comuna da Funda no dia 27 de Junho de 2015. A característica argilosa do solo na zona de construção, exigiu o recurso de soluções de engenharia para que se procedesse a substituição do mesmo, de modos a garantir a sustentabilidade da fundação do edifício.",
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
                  child: buildImg('assets/images/primeira_pedra.jpg', 400.0)
                  ),
              ],
            ),
          Row(
            children: <Widget>[
              Expanded(
                  child: buildImg('assets/images/mcc1.jpg', 300.0)
                  ),
              Expanded(
                  child: buildImg('assets/images/mcc2.jpg', 300.0)
                  ),
              ],
            ),
          Row(
            children: <Widget>[
              Expanded(
                  child: buildImg('assets/images/mcc3.jpg', 300.0)
                  ),
              Expanded(
                  child: buildImg('assets/images/mcc.jpg', 300.0)
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
                height: 250.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                    image: DecorationImage(image: AssetImage('assets/images/ggpen.jpg'), fit: BoxFit.cover),
                    ),
                  ),
                ),
              ExpandablePanel(
                tapHeaderToExpand: true,
                header: Padding(
                    padding: EdgeInsets.only(
                        top: 10.0, left: 10
                        ),
                    child: Text("Gabinete de Gestão do Programa Espacial Nacional.", style: Theme.of(context).textTheme.body2)
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



