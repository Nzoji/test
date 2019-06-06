import 'package:angosat_educa2/data/expandable.dart';
import 'package:flutter/material.dart';


class Stage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //ADDING A APPBAR
      appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          automaticallyImplyLeading: true,
          title: Text('CULTURA ESPACIAL'),
          leading: IconButton(icon:Icon(Icons.arrow_back), onPressed:() => Navigator.pop(context, false),
                              )
          ),
        //CLOSE OF APP BAR
        body: ListView(
          children: <Widget>[
            Card1(
            ),
            Card2(
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

const text1 = "A cultura espacial é todo o conhecimento adquirido sobre a exploração, uso, benefício, história, conhecimentos de interesse e importância sobre a área espacial.\n\nMuitos objectos que hoje são de uso corrente nasceram das necessidades do programa espacial. As rigorosas condições que enfrentam os exploradores espaciais impactam directa e indirectamente o nosso dia-a-dia, e exigem o desenvolvimento de equipamentos sofisticados e inovadores.\n\n";
const text2 = "Para entendermos como se faz uma missão espacial, a importância e o impacto dessa exploração, temos que olhar para um número de vantagens, por vezes rentáveis que o espaço oferece. Estas vantagens são chamadas de imperativo do espaço e classificam-se em:\n\n• Perspectiva do globo terrestre\n\n Quanto mais alto da superfície terrestre o satélite estiver, maior será a visão aérea do território, permitindo a protecção das fronteiras, a agricultura de precisão, e a gestão dos recursos minerais.\n\n• Visão clara dos céus\n\n Permite uma melhor vista do espaço sem obstrução da atmosfera da terrestre.\n\n• Ambiente livre de queda\n\nDevido o ambiente de microgravidade, a estrutura do espaço é determinada pela gravidade que todos os corpos exercem uns sobre os outros. Na indústria espacial, o ambiente de microgravidade contribui no fabrico de materiais miniaturizados com mais facilidade usados em computadores e outros electrónicos. \n\n• Recursos\n\n Um dos recursos mais usados pela indústria espacial actualmente é a energia solar como fonte de alimentação principal dos satélites.";

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        child: ExpandableNotifier(
          child: Column(
            children: <Widget>[
              const Text.rich(TextSpan(text:'\n\n“ Angola está na industria espacial para não sair mais.”',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),style: TextStyle(fontSize: 15.0)),
              const Text.rich(TextSpan(text:'“ José Carvalho da Rocha, Ministro das Telecomunicações e Tecnologias de Informação”\n\n')),

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
                      "Cultura espacial.",
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
                  Text("“Até hoje, a exploração espacial continua a ser um dos principais motores de inovação tecnológica.\n” ",
                         style: Theme.of(context).textTheme.body2,
                       ),
                  Text("Ilustração de algumas das aplicações do espaço na nossa vida nos selos de Angola.",
                         style: Theme.of(context).textTheme.caption,
                       ),
                ],
                ),
              ),
          ]
          );
    }

    buildCollapsed2() {
      return buildImg('assets/images/mission_types_stamp.png', 650.0);
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
                  Text("A tecnologia espacial se reflecte no nosso dia-a-dia através dos seguintes meios: \n\n",
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
                  child: buildImg('assets/images/sat_air_control.gif', 200.0)
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
            Text("• Telemóveis que precisam dos satélites;\n\n• Melhores previsões meteorológicas após imagens de satélite;\n\n• GPS – Sistema de Posicionamento Global;\n\n• Satélites permitem uma melhor gestão dos recursos naturais;\n\n• Tecnologia de imagem utilizada por satélites para monitorizar sistemas na Terra, agora também  utilizada em hospitais nas máquinas de ressônancia magnética para detectar doenças; \n\n• Melhorias em aplicações utilizadas em casa como termómetros de infravermelhos;\n\n• Melhorias no isolamento térmico tendo aplicabilidade nas fardas dos bombeiros; \n\n• Desenvolvimento da fotografia digital;\n\n• Desenvolvimento de técnicas de controlo de tráfego aéreo;  \n\n• Mecanismos utilizados para fazer crescer plantas no espaço são hoje utilizados para combater o cancro, diminuir dores crónicas (como artrite e espasmos musculares), e aumentar a circulação sanguínea; \n\n• Ajuda nas operações de socorro, busca, e resgate, após desastres naturais; \n\n• Sistemas de tratamento e purificação de água mais eficientes.", softWrap: true,),
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
