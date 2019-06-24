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
            ),
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

const text1 = "A cultura espacial é todo o conhecimento adquirido sobre a exploração, uso, benefício, história, conhecimentos de interesse e importância sobre a área espacial.\n\nDevido a guerra fria, muitos povos não viram interesse em dispender grandes somas na corrida ao espaço, no momento em que a economia mundial enfrentava tantos problemas. Contudo, a tecnologia que resultou daquela competição trouxe-nos imensos benefícios.";

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        child: ExpandableNotifier(
          child: Column(
            children: <Widget>[
              const Text.rich(TextSpan(text:'\n\n “ Angola está na industria espacial para não sair mais.”',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),style: TextStyle(fontSize: 15.0)),
              const Text.rich(TextSpan(text:' “ José Carvalho da Rocha, Ministro das Telecomunicações e Tecnologias de Informação”\n\n')),
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
                  Text("Benefícios da exploração espacial.\n",
                       style: Theme.of(context).textTheme.body2,
                       ),
                  Text("Resultados directos dessa pesquisa virada para o espaço são por exemplo:\n\n• Os novos materiais, leves mas resistentes, isolamento térmico na farda dos bombeiros e os métodos modernos de purificar a água;\n\n• A maioria das telecomunicações são feitas com satélites que orbitam a Terra; \n\n• A navegação e a aviação usam satélites para se orientarem;\n\n• Os antigos satélites militares são agora usados em sistemas de prevenção de objectos vindo do espaço, potencialmente perigosos para a Terra;\n\n• As previsões do estado do tempo são mais precisas através de satélites meteorológicos; \n\n• E são também satélites que pesquisam as possíveis, riquezas mineralógicas e outros recursos do nosso planeta.\n\nEstes e muitos outros benefícios são tão importantes que a Assembleia Geral da ONU em 1999, criou a Semana Mundial do Espaço, um evento que acontece sempre entre 4 e 10 de Outubro, sendo uma celebração global anual das contribuições da ciência e da tecnologia espacial para a humanidade.",
                         style: Theme.of(context).textTheme.body1,
                       ),
                  Text("\n\nRepresentação do uso de satélites para orientação na navegação e na aviação. Imagem: ESA. ",style: Theme.of(context).textTheme.caption,
                       ),

                ],
                ),
              ),
          ]
          );
    }

    buildCollapsed2() {
      return buildImg('assets/images/sat_air_control.gif', 350.0);
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
                  Text("Imperativos do Espaço.\n",
                         style: Theme.of(context).textTheme.body2,
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
                  child: buildImg('assets/images/solar_energy.jpg', 300.0)
                  ),
              Expanded(
                  child: buildImg('assets/images/clean_space_view.jpg', 300.0)
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
            Text("Para entendermos como se faz uma missão espacial, a importância e o impacto dessa exploração, temos que olhar para um número de vantagens, por vezes rentáveis que o espaço oferece. Estas vantagens são chamadas de imperativo do espaço e classificam-se em:\n\n• Perspectiva do globo terrestre\n\n Quanto mais alto da superfície terrestre o satélite estiver, maior será a visão aérea do território, permitindo a protecção das fronteiras, a agricultura de precisão, e a gestão dos recursos minerais.\n\n• Visão clara dos céus\n\n Permite uma melhor vista do espaço sem obstrução da atmosfera da terrestre.\n\n• Ambiente livre de queda\n\nNa indústria espacial, o ambiente de microgravidade contribui no fabrico de materiais miniaturizados com mais facilidade usados em computadores e outros electrónicos. \n\n• Recursos\n\n Um dos recursos mais usados pela indústria espacial actualmente é a energia solar como fonte de alimentação principal dos satélites.", softWrap: true,),
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
