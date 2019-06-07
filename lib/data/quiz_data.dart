import 'package:angosat_educa2/model/answer.dart';
import 'package:angosat_educa2/model/question.dart';
import 'package:angosat_educa2/model/stage.dart';
import 'package:flutter/material.dart';

class QuizActions {
  VoidCallback handleAnswer(Answer answer){return (){};}
  void rightAnswer(bool init){}
  void wrongAnswer(){}
  void endQuiz(){}
}

List<Question> stageQuiz(StageType type) {
  List<Question> quiz;
  switch (type){
    case StageType.STAGE1:
      quiz = quizStage1;
      break;
    case StageType.STAGE2:
      quiz = quizStage2;
      break;
    case StageType.STAGE3:
      quiz = quizStage3;
      break;
    case StageType.STAGE4:
      quiz = quizStage4;
      break;
    case StageType.STAGE5:
      quiz = quizStage5;
      break;
    default:
      break;
  }
  return quiz;
}
//-----------------------------------------------------------------------------FIRST QUIZ------------------------------------------------------------------------------------------------------------------------------------------------------
List<Question> quizStage1 = [
  Question(
      'Quem foi o primeiro ser vivo a orbitar o planeta terra?',
      [Answer("Yuri Gagarine", false),
        Answer("Neil Amstrong", false),
        Answer("Laika", true)
      ],
      1, StageType.STAGE1
      ),
  Question(
      "Em que ano Angola construiu a sua primeria infraestrutura para possibilitar a comunicação via satélite?",
      [Answer("1991", false),
        Answer("1974", true),
        Answer("2010", false)
      ],
      1, StageType.STAGE1
      ),
  Question(
      "Qual é o nome do satélite que permitiu a primeira transmissão ao vivo de imagens de televisão entre os Estados Unidos e a Europa?",
      [Answer("Telstar 1", true),
        Answer("Explorer 1", false),
        Answer("Luna 1", false)
      ],
      1, StageType.STAGE1
      ),
  Question(
      "Em que ano e qual é o nome da primeira mulher a viajar para o espaço?",
      [Answer("1963 – Savitskaya Minkova", false),
        Answer("1969 - Hughes Fulford", false),
        Answer("1963 – Valentina Vladimirovna Tereshkova", true)
      ],
      1, StageType.STAGE1
      ),
  Question(
      "Quem foi o primeiro homem a viajar para o espaço?",
      [Answer("Laika", false),
        Answer("Yuri Gagarine", true),
        Answer("Neil Amstrong", false)
      ],
      1, StageType.STAGE1
      ),
  Question(
      "Quem foi John Glenn Jr.?",
      [Answer("Primeiro piloto americano", false),
        Answer("Primeiro astronauta americano", true),
        Answer("Primeiro engenheiro americano", false)
      ],
      1, StageType.STAGE1
      ),
  Question(
      "Qual é o nome da primeira sonda a chegar a Lua?",
      [Answer("Luna I", true),
        Answer("Telstar I", false),
        Answer("Vostok VI", false)
      ],
      1, StageType.STAGE1
      ),
  Question(
      "Para quantos anos estava estimado o satélite BrasilSat A1?",
      [Answer("17 anos", false),
        Answer("10 anos", false),
        Answer("8 anos", true)
      ],
      1, StageType.STAGE1
      ),
  Question(
      "Quantos satélite foram usados na constelação que possibilitou o surgimento do GPS?",
      [Answer("28 satélites", false),
        Answer("21 satélites", false),
        Answer("24 satélites", true)
      ],
      1, StageType.STAGE1
      ),
  Question(
      "Com base na observação do quê foi criado o calendário?",
      [Answer("Observação do sol", false),
        Answer("Observação do mar", false),
        Answer("Observação das estrelas", true)
      ],
      1, StageType.STAGE1
      ),
  Question(
      "Quantos quilogramas pesava a nave Vostok 1?",
      [Answer("4572 quilogramas", false),
        Answer("4752 quilogramas", false),
        Answer("4725 quilogramas", true)
      ],
      1, StageType.STAGE1
      ),
  Question(
      "Qual é o significado do acrónimo GPS?",
      [Answer("Global Permission for Space", false),
        Answer("Global Placement Spy", false),
        Answer("Global Positioning System", true)
      ],
      1, StageType.STAGE1
      ),
];
//---------------------------------------------------------------------------------SECOND QUIZ-------------------------------------------------------------------------------------------------------------------
List<Question> quizStage2 = [
 /*1.*/Question(
      "A razão pela qual se vai para o espaço é porque temos...",
      [Answer("uma missão", true),
        Answer("uma posição orbital", false),
        Answer("um foguetão", false)
      ],
      1, StageType.STAGE2
      ),
  /*2.*/Question(
      "Qual destes factores definem, os elementos da missão?",
      [Answer("O objectivo", true),
        Answer("A órbita", false),
        Answer("O ponto orbital", false)
      ],
      1, StageType.STAGE2
      ),
  /*3.*/ Question(
      "Qual destes não são elementos de uma missão espacial?",
      [Answer("Satélite", false),
        Answer("Órbita", false),
        Answer("Perigeu", true)
      ],
      1, StageType.STAGE2
      ),
  /*4.*/Question(
      "Que nome se dá trajectória fixa que o satélite descreve no espaço?",
      [Answer("Geostacionária ", false),
        Answer("Órbita", true),
        Answer("Trajectória", false)
      ],
      1, StageType.STAGE2
      ),
  /*5.*/Question(
      "O satélite está dividido em:",
      [Answer("Módulo da carga útil", false),
        Answer("Módulo da plataforma", false),
        Answer("Todas mencionadas", true)
      ],
      1, StageType.STAGE2
      ),
  /*6.*/Question(
      'Qual destas não pertence as equipas que compõem o Centro de Controle e Missão de Satélite do projecto ANGOSAT?',
      [Answer("Equipa de Construção", true),
        Answer("Equipa de Planeamento de vôo", false),
        Answer("Equipa do Canal de Serviço", false)
      ],
      1, StageType.STAGE2
      ),
  /*7.*/Question(
      'O objectivo, os usuários e as operações são: ',
      [Answer("Elementos de uma missão", false),
        Answer("Elementos que definem uma missão", true),
        Answer("Todos mencionados", false)
      ],
      1, StageType.STAGE2
      ),
  /*8.*/Question(
      'Qual destes é um dos benefício mais importantes da exploração espacial?',
      [Answer("Os planetas", false),
        Answer("Desenvolvimento de tecnologia de satélites", true),
        Answer("Todos mencionados", false)
      ],
      1, StageType.STAGE2
      ),
  /*9.*/Question(
      'Qual destas é o acrónimo da órbita geostácionária?',
      [Answer("GEO", true),
        Answer("LEO", false),
        Answer("MEO", false)
      ],
      1, StageType.STAGE2
      ),
  /*10.*/Question(
      'Complete a frase: A altitude da órbita define...',
      [Answer("O tamanho da cobertuura do satélite", false),
        Answer("A trajectória do satélite", false),
        Answer("O tamanho do satélite", true)
      ],
      1, StageType.STAGE2
      ),
];
//-------------------------------------------------------------------------------------THIRD QUIZ-------------------------------------------------------------------------------------------------------------------
List<Question> quizStage3 = [
  Question(
      'Quais são os tipos de satélites existentes?',
      [Answer("Satélites Naturais", false),
        Answer("Satélites Artificiais", false),
        Answer("Os dois mencionados", true)
      ],
      1, StageType.STAGE1
      ),
  Question(
      'Qual é nome do primeiro satélite artificial?',
      [Answer("Angosat-1", false),
        Answer("Sputnik", true),
        Answer("Explorer 1", false)
      ],
      1, StageType.STAGE3
      ),
  Question(
      'Em que órbita foi lançado o satélite angolano Angosat-1?',
      [Answer("MEO: Órbita Média da Terra", false),
        Answer("GEO: Órbita Geostacionária", true),
        Answer("HEO: Órbita Alta da Terra", false)
      ],
      1, StageType.STAGE3
      ),
  Question(
      "Qual é a finalidade do satélite de comunicação?",
      [Answer("Comunicacar", true),
        Answer("Navegar", false),
        Answer("Reconhecimento", false)
      ],
      1, StageType.STAGE3
      ),
  Question(
      "Grande parte dos satélites na órbita geostacionária (GEO) são de comunicação.",
      [Answer("Verdadeiro", true),
        Answer("Falso", false),
        Answer("Depende da carga útil", false)
      ],
      1, StageType.STAGE3
      ),
  Question(
      "Qual é o tipo de satélite artificial que nos permite determinar o posicionamento de um objecto na terra?",
      [Answer("Satélite de Comunicação", false),
        Answer("Satélite de Observação", false),
        Answer("Satélite de Navegação", true)
      ],
      1, StageType.STAGE3
      ),
  Question(
      "Quantos satélites são necessários para determinar a localização de objectos na terra?",
      [Answer("15", false),
        Answer("7", false),
        Answer("3", true)
      ],
      1, StageType.STAGE3
      ),
  Question(
      "Em que órbita estão os satélites de navegação?",
      [Answer("GEO: Órbita Geostacionária", false),
        Answer("MEO: Órbita Média da Terra", true),
        Answer("HEO: Órbita Alta da Terra", false)
      ],
      1, StageType.STAGE3
      ),
  Question(
      "Qual é a finalidade dos satélites astronómicos?",
      [Answer("Observação de objectos celestes", true),
        Answer("Observação da terra", false),
        Answer("Observação de satélites antigos", false)
      ],
      1, StageType.STAGE3
      ),
  Question(
      "Qual é a finalidade de um satélite de reconhecimento?",
      [Answer("Estudo do espaço", false),
        Answer("Fins militares", true),
        Answer("Comunicação", false)
      ],
      1, StageType.STAGE3
      ),
  Question(
      "Quantos satélites naturais tem o nosso planeta.",
      [Answer("4", false),
        Answer("1", true),
        Answer("5", false)
      ],
      1, StageType.STAGE3
      ),
  Question(
      "Quais os tipos de satélites em que mais da metade orbita a terra?",
      [Answer("Navegação ", false),
        Answer("Reconhecimento", false),
        Answer("Comunicação", true)
      ],
      1, StageType.STAGE3
      ),
];
//-----------------------------------------------------------------------------------------------FOURTH QUIZ---------------------------------------------------------------------------------------------------------
List<Question> quizStage4 = [
  Question(
      'Qual dos elementos de uma missão espacial deve ser o primeiro a ser pensado?',
      [Answer("Missão", true),
        Answer("Veículo Espacial", false),
        Answer("Veículo de Lançamento", false)
      ],
      1, StageType.STAGE4
      ),
  Question(
      'Qual o tipo de satélite que permite a interlocução entre pessoas distantes umas das outras?',
      [Answer("Satélite de navegação", false),
        Answer("Satélite de observação", false),
        Answer("Satélite de comunicação", true)
      ],
      1, StageType.STAGE4
      ),
  Question(
      'Os elementos da missão espacial são: órbita, trajectória, veículo de lançamento, sistema de operações, veiculo espacial e missão.',
      [Answer("Verdadeiro", true),
        Answer("Falso", false),
        Answer("Depende da missão", false)
      ],
      1, StageType.STAGE4
      ),
  Question(
      "Quais são as duas partes básicas de um Veículo Espacial?",
      [Answer("Carga útil e carga bruta", true),
        Answer("Módulo de serviço e subsistemas", false),
        Answer("Carga útil e Plataforma universal", false)
      ],
      1, StageType.STAGE4
      ),
  /*Question(
      "Qual era a finalidade do satélite ANGOSAT-1?",
      [Answer("Uso Militar", false),
      Answer("Navegar", false),
      Answer("Comunicar", true)
      ],
      1, StageType.STAGE4
  ),*/
  Question(
      'Que nome se dá a pista fixa em que um satélite viaja em torno de um planeta ou outro corpo celeste?',
      [Answer("Missão", false),
        Answer("Órbita", true),
        Answer("Veículo Espacial", false)
      ],
      1, StageType.STAGE4
      ),
  Question(
      'Quanto mais alta a órbita, mais energia será necessária para atingí-la.',
      [Answer("Verdadeiro", true),
        Answer("Falso", false),
        Answer("Não é possível prever", false)
      ],
      1, StageType.STAGE4
      ),
  Question(
      "Satélites de comunicação são um desperdício de dinheiro.",
      [Answer("Verdadeiro", false),
        Answer("Falso", true),
        Answer("Depende do país", false)
      ],
      1, StageType.STAGE4
      ),
  Question(
      "Satélites de comunicação melhoram e aumentam:...",
      [Answer("...A capacidade de comunicação", false),
        Answer("...Acesso aos serviços de internet", false),
        Answer("Todas mencionadas", true)
      ],
      1, StageType.STAGE4
      ),
  Question(
      "Será que o tamanho da órbita influencia o sistema de operações?",
      [Answer("Verdadeiro", false),
        Answer("Falso", true),
        Answer("Depende dos elementos orbitais", false)
      ],
      1, StageType.STAGE4
      ),
];
//-----------------------------------------------------------------------------------FIFTH QUIZ--------------------------------------------------------------------------------------------------------------------------
List<Question> quizStage5 = [
  Question(
      'Qual é o nome do primeiro satélite angolano?',
      [Answer("Angosat-1", true),
        Answer("Angosat", false),
        Answer("Angola-1", false)
      ],
      1, StageType.STAGE5
      ),
  Question(
      'Quais são os componentes do projecto ANGOSAT',
      [Answer("Segmento Terrestre", false),
        Answer("Segmento Espacial", false),
        Answer("Todas citadas", true)
      ],
      1, StageType.STAGE5
      ),
  Question(
      'Quais as zonas de cobertura do satélite Angosat-1?',
      [Answer("Angola e uma parte de África", false),
        Answer("Apenas Angola", false),
        Answer("África e parte da Europa", true)
      ],
      1, StageType.STAGE5
      ),
  Question(
      "Em que ano foi assinado o contrato de construção do satélite ANGOSAT-1?",
      [Answer("2006", false),
        Answer("2009", true),
        Answer("2012", false)
      ],
      1, StageType.STAGE5
      ),
  Question(
      "Qual foi a finalidade do satélite ANGOSAT-1?",
      [Answer("Uso Militar", false),
        Answer("Navegação", false),
        Answer("Comunicações", true)
      ],
      1, StageType.STAGE5
      ),
  Question(
      'Qual foi o tempo de vida útil estimado do ANGOSAT-1',
      [Answer("15 anos", true),
        Answer("18 anos", false),
        Answer("Não é possível estimar", false)
      ],
      1, StageType.STAGE5
      ),
  Question(
      'Quando foi lançado e colocado em órbita o satélite ANGOSAT-1?',
      [Answer("2018", false),
        Answer("2015", false),
        Answer("2017", true)
      ],
      1, StageType.STAGE5
      ),
  Question(
      "Em que posição na órbita geoestacionária está o satélite Angosat-1 ?",
      [Answer("14,5° Este", true),
        Answer("26.3° Este", false),
        Answer("176° Este", false)
      ],
      1, StageType.STAGE5
      ),
  Question(
      "Como se chama a estrutura terrena destinada para controle do satélite Angosat-1?",
      [Answer("Centro de Controle de Saúde do ANGOSAT-1", false),
        Answer("Centro de Controle de Missão", true),
        Answer("Centro de Rastreio Controle de Missão", false)
      ],
      1, StageType.STAGE5
      ),
  Question(
      "Qual destes é nome de um satélite africano?",
      [Answer("AMOS-5", false),
        Answer("EUTELSAT", false),
        Answer("RASCOM", true)
      ],
      1, StageType.STAGE5
      ),
];
//-------------------------------------------------------------------------------------------SIXTH QUIZ-----------------------------------------------------------------------------------------------------------------------------------------------
