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
  /*1.*/Question(
      'Qual destes são resultados directos da pesquisa espacial?',
      [Answer("Métodos modernos de purificação de água.", false),
        Answer("Telecomunicações através de satélites.", false),
        Answer("Todos mencionados.", true)
      ],
      1, StageType.STAGE1
      ),
  /*2.*/Question(
      'Complete a frase: A cultura espacial é___________________.',
      [Answer("O conhecimento adquirido sobre a exploração espacial.", false),
        Answer("Importância da área espacial.", false),
        Answer("Todas mencionadas", true)
      ],
      1, StageType.STAGE1
      ),
  /*3.*/Question(
      'Quais desses benefícios não é resultado da tecnologia de satélites na nossa vida?',
      [Answer("Cabo de fibra óptica", true),
        Answer("Isolamento térmico nas fardas dos bombeiros", false),
        Answer("GPS - Sistema de Posicionamento Global.", false)
      ],
      1, StageType.STAGE1
      ),
  /*4.*/Question(
      'Complete a frase: A Semana Mundial do Espaço datada entre 4 e 10 de Outubro, foi criada pela Assembléia Geral da ONU em________.',
      [Answer("1899 ", false),
        Answer("1999", true),
        Answer("1989", false)
      ],
      1, StageType.STAGE1
      ),
  /*5.*/Question(
      'Qual destes não é considerado imperativo do espaço?',
      [Answer("Perspectiva do globo terrestre.", false),
        Answer("Criação de detritos espaciais.", true),
        Answer("Visão clara dos céus.", false)
      ],
      1, StageType.STAGE1
      ),

];
//---------------------------------------------------------------------------------SECOND QUIZ-------------------------------------------------------------------------------------------------------------------
List<Question> quizStage2 = [
  /*1.*/Question(
      'Complete a frase: A razão pela qual se vai para o espaço é porque temos_____________',
      [Answer("uma missão", true),
        Answer("uma posição orbital", false),
        Answer("um foguetão", false)
      ],
      1, StageType.STAGE2
      ),
  /*2.*/Question(
      'Qual destes factores definem, os elementos da missão?',
      [Answer("O objectivo", true),
        Answer("A órbita", false),
        Answer("O ponto orbital", false)
      ],
      1, StageType.STAGE2
      ),
  /*3.*/ Question(
      'Qual destes não é elemento de uma missão espacial?',
      [Answer("Satélite", false),
        Answer("Órbita", false),
        Answer("Perigeu", true)
      ],
      1, StageType.STAGE2
      ),
  /*4.*/Question(
      'Qual destas é o acrónimo da órbita geostácionária?',
      [Answer("GEO", true),
        Answer("LEO", false),
        Answer("MEO", false)
      ],
      1, StageType.STAGE2
      ),
  /*5.*/Question(
      'O satélite está dividido em:',
      [Answer("Módulo da carga útil", false),
        Answer("Módulo da plataforma", false),
        Answer("Todas mencionadas", true)
      ],
      1, StageType.STAGE2
      ),

];
//-------------------------------------------------------------------------------------THIRD QUIZ-------------------------------------------------------------------------------------------------------------------
List<Question> quizStage3 = [
  /*1.*/ Question(
      'Qual destes são tipos de satélites?',
      [Answer("Satélites naturais", false),
        Answer("Satélites artificiais", false),
        Answer("Todos mencionados", true)
      ],
      1, StageType.STAGE1
      ),
  /*2.*/ Question(
      'Complete a frase: O satélite está dividido em_________________?',
      [Answer("Módulo da plataforma.", false),
        Answer("Módulo da plataforma  e módulo da carga útil.", true),
        Answer("Nenhuma das mencionadas.", false)
      ],
      1, StageType.STAGE3
      ),
  /*3.*/Question(
      'Qual é a principal fonte de energia dos satélites?',
      [Answer("A Lua", false),
        Answer("O Sol", true),
        Answer("Os painéis solares", false)
      ],
      1, StageType.STAGE3
      ),
  /*4.*/Question(
      'Em que fase as baterias do satélites entram em funcionamento?',
      [Answer("No início da vida útil do satélite.", false),
        Answer("Em fase de eclipse ou em situação anômala.", false),
        Answer("Todas mencionadas ", true)
      ],
      1, StageType.STAGE3
      ),
  /*5.*/Question(
      'Por onde entra a luz solar convertida em energia para alimentação dos satélite?',
      [Answer("Pelas antenas reflectoras", true),
        Answer("Pelos painéis solares", false),
        Answer("Depende da carga útil", false)
      ],
      1, StageType.STAGE3
      ),

];
//-----------------------------------------------------------------------------------------------FOURTH QUIZ---------------------------------------------------------------------------------------------------------
List<Question> quizStage4 = [
  /*1.*/Question(
      'Complete a frase: O cansat é um satélite integrado no volume de um refregerante de______________.',
      [Answer("330 ml.", true),
        Answer("530 ml.", false),
        Answer("360 ml.", false)
      ],
      1, StageType.STAGE4
      ),
  /*2.*/Question(
      'Complete a frase: O cansat angolano foi criado pelo______________?',
      [Answer("GGPEN.", true),
        Answer("GPPEN.", false),
        Answer("Todos mencionados.", false)
      ],
      1, StageType.STAGE4
      ),
  /*3.*/Question(
      'Complete a frase:O____________ é uma ferramenta de treinamento desenvolvida pelo Professor Yamazaki.',
      [Answer("CanSAT", false),
        Answer("HEPTASAT", true),
        Answer("CubeSAT", false)
      ],
      1, StageType.STAGE4
      ),
  /*4.*/Question(
      'Qual destes é considerado pequeno satélite?',
      [Answer("ANGOSAT-2", false),
        Answer("CanSAT angolano", true),
        Answer("Sputnik", false)
      ],
      1, StageType.STAGE4
      ),
  /*5.*/Question(
      'Complete a frase: Um CubeSAT é um satélite em miniatura na forma de um__________________?',
      [Answer("Triângulo.", false),
        Answer("Cubo.", true),
        Answer("Retângulo.", false)
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
