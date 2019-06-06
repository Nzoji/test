import 'package:flutter/material.dart';


const primarycolor = const Color(0xFFFFFFFF);

class Third extends StatefulWidget {

  static String tag = 'vocabularylist_page';


  @override  State<StatefulWidget> createState() {
    return new _VocabularyListState();
  }
}
//------------Vocabulário--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
List<Vocabulary> vocabulary = [
  Vocabulary(word: 'Abertura', meaning: 'Largura da principal lente ou do espelho, ou a abertura no topo do tubo de um telescópio.'),
  Vocabulary(word: 'Aberração cromática',meaning: 'Propriedade óptica segundo a qual diferentes cores de luz que passam através de uma lente são focadas em diferentes distâncias dela.'),
  Vocabulary(word: 'Aglomerado de galáxias', meaning: 'Agregação de galáxias pela gravidade. Aglomerados  com poucas dezenas de membros são chamados grupos. Aglomerados maiores são divididos em regulares e irregulares, dependendo do grau de estrutura.'),
  Vocabulary(word: 'Aglomerado Estelar', meaning: 'Ajuntamento estelar aproximadamente esférico, contendo entre 10.000 e mais de 1 milhão de estrelas, composto por estrelas mais velhas, localizado predominantemente no halos de galáxias.'),
  Vocabulary(word: 'Aglomerado globular', meaning: 'Aglomerado denso, em forma de bola, contendo dezenas ou centenas de milhares de estrelas. Algumas das mais antigas estrelas conhecidas estão contidas em aglomerados globulares.'),
  Vocabulary(word: 'Albedo', meaning: 'Quantidade de luz refletida pela superfície de um planeta, satélite, asteróide ou outro corpo. Um objeto  de albedo alto tem cor clara, um de albedo baixo é escuro.'),
  Vocabulary(word: 'Altura', meaning: 'Distância angular de um objeto acima do horizonte, em graus'),
  Vocabulary(word: 'Anã branca', meaning: 'Estrela pequena e densa com massa similar à do Sol mas diâmetro apenas comparável ao da Terra. As anãs brancas são os restos contraídos de estrelas como o Sol que se extinguiram.'),
  Vocabulary(word: 'Anã marrom', meaning: 'Objeto gasoso do tamanho intermediário, entre um planeta e uma estrela, sem massa suficiente para desencadear reações de fusão  de hidrogênio em seu núcleo.'),
  Vocabulary(word: 'Anã negra', meaning: 'ver estrela anã negra'),
  Vocabulary(word: 'Anã  vermelha ', meaning: 'Estrela menor, mais fria  e menos luminosa que o Sol'),
  Vocabulary(word: 'Análise espectral ', meaning: 'Identificação dos elementos químicos pela aparência de seu espectro'),
  Vocabulary(word: 'Anel', meaning: 'Distribuição plana de grãos e porções de material que orbitam um planeta, em geral no seu plano equatorial. Um sistema de anéis consiste de um conjunto de anéis concêntricos circundando um planeta.'),
  Vocabulary(word: 'ANGOSAT', meaning: 'ANGOSAT é a denominação de um projecto que é parte integrante do Programa Espacial Nacional (PEN), tendo como foco principal garantir a construção, lançamento e operação de satélites angolanos geoestacionários, que forneçam oportunidades de expansão dos serviços de comunicação via satélite (internet, rádio, telefonia e transmissão televisiva), por todo território nacional e proporcionem a  arrecadação de receitas. O Angosat-2 cobrirá toda a África e Parte da Europa.'),
  Vocabulary(word: 'ANGOSAT-1 ', meaning: 'No ano de 2009, firmou-se o Contrato entre o Governo da República de Angola, representado pelo Ministério das Telecomunicações e das Tecnologias de Informação (MTTI) e a Federação da Rússia, para a Construção, Lançamento e Operação do satélite Angosat-1, em órbita desde Dezembro de 2017, mas sem sinal, até à presente data.'),
  Vocabulary(word: 'ANGOSAT-2 ', meaning: 'Nome do segundo satélite angolano de comunicação, construído dentro das compensações com a Rússia, um satélite com tecnologias mais recentes. '),
  Vocabulary(word: 'Ano-luz ', meaning: 'A distância coberta por um raio de luz num ano do calendário, 9,46 trilhões de km.'),
  Vocabulary(word: 'Antimatéria ', meaning: 'Matéria composta de anti-partículas.'),
  Vocabulary(word: 'Anti-partícula ', meaning: ' Partícula elementar com a mesma massa que uma partícula de matéria convencional, mas com valor exatamente oposto de outras quantidades como a carga elétrica  e spin.'),
  Vocabulary(word: 'Apogeu ', meaning: 'Ponto mais distante de um corpo em órbita da Terra. Ver também perigeu.'),
  Vocabulary(word: 'Asteróide ', meaning: ' Corpo sólido menor que um planeta; também conhecido como planeta menor. A maior parte dos asteróides  giram na órbita do Sol no cinturão de Asteróides entre Marte e Júpiter.'),
  Vocabulary(word: 'Asteróides do cinturão ', meaning: 'Asteróides cuja órbita se encontra no cinturão de asteróides.'),
  Vocabulary(word: 'Astrobiologia', meaning: 'O estudo da vida no universo.'),
  Vocabulary(word: 'Astrofísica ', meaning: 'Parte da astronomia que lida com a física dos objetos astronômicos e fenômenos relacionados.'),
  Vocabulary(word: 'Astronomia', meaning: 'Ramo da ciência que lida com objetos e fenômenos que se encontram além da atmosfera terrestre.'),
  Vocabulary(word: 'Átomo', meaning: 'Constituinte fundamental da matéria, unidade mínima de um elemento químico que ainda possui as características do elemento. Consiste de um núcleo composto de prótons e nêutrons, circundado por uma nuvem de elétrons.'),
  Vocabulary(word: 'AU', meaning: 'ver unidade astronômica.'),
  Vocabulary(word: 'Aurora', meaning: 'Fulgor na atmosfera superior da Terra causado por interações com partículas provenientes do Sol.'),
  Vocabulary(word: 'Aurora austral (luzes do sul) ', meaning: 'Luz irradiada por  átomos e íons na atmosfera superior da Terra  devido a partículas de altas energias provenientes do Sol; vista mais comumente nas regiões polares do sul.'),
  Vocabulary(word: 'Aurora boreal (luzes do norte) ', meaning: 'Luz irradiada pelos átomos e íons na atmosfera superior da Terra devido a partículas de alta energia provenientes do Sol e vistas principalmente nas regiões polares do norte.'),
  Vocabulary(word: 'Azimute', meaning: 'Ângulo  de um objeto sobre o horizonte medido em graus a partir do norte via leste e novamente de volta ao norte.'),
  Vocabulary(word: 'Baikonur', meaning: 'é a primeira e maior base de lançamentos de foguetes do mundo. Está em operação desde a década de 1950, sendo a princípio uma base de lançamento de mísseis de longo alcance, entretanto com o florescer da Guerra Fria tornou-se uma base tecnológica dirigida por interesses da União Soviética para a conquista do espaço.'),
  Vocabulary(word: 'Baterias', meaning: 'é um aparelho ou dispositivo que transforma em corrente elétrica a energia desenvolvida numa reação química, fonte secundária de alimentação do satélite.'),
  Vocabulary(word: 'Base de lançamento de foguetes  ', meaning: 'também conhecidas como espaçoportos ou cosmódromos, são estruturas especialmente preparadas para o lançamento de veículos espaciais, como foguetes e ônibus espaciais.'),
  Vocabulary(word: 'Big Bang ', meaning: 'O evento explosivo que marcou a origem do Universo cerca de 13,7 bilhões de anos atrás.'),
  Vocabulary(word: 'Buraco coronal ', meaning: 'Região escura da coroa mais interna do Sol quando vista nos comprimentos de onda dos raios X.'),
  Vocabulary(word: 'Buraco de Minhoca ', meaning: 'Passagem hipotética conectando um buraco negro a outro lugar do universo. Em inglês chama-se Wormhole'),
  Vocabulary(word: 'Buraco negro ', meaning: 'Volume de espaço em que a gravidade é tão grande que nada lhe pode escapar, nem mesmo a luz. Pensa-se que os buracos negros se formam quando estrelas grandes morrem.'),
  Vocabulary(word: 'Cadeia próton-próton (cadeia p-p) ', meaning: 'Sequência de reações nucleares que levam à fusão de núcleos de hidrogênio (prótons) para criar núcleos de hélio. O resultado do processo todo é a conversão de quatro prótons em um núcleo de hélio.'),
  Vocabulary(word: 'Campo Magnético ', meaning: 'Região do espaço em torno de um corpo magnetizado, onde as forças magnéticas afetam o movimento de partículas eletricamente carregadas.'),
  Vocabulary(word: 'Caroço', meaning: 'A região central de uma estrela onde a energia é gerada por fusão nuclear.'),
  Vocabulary(word: 'Carga útil ', meaning: 'é a capacidade de carga do veículo, geralmente expressa em peso (Massa), incluindo: produtos comerciais, munição, instrumentos científicos e experimentos.'),
  Vocabulary(word: 'Catadióptrico ', meaning: 'Tipo de telescópio refletor com uma lente fina colocada através de sua abertura que lhe dá um campo de visão amplo combinado com um comprimento focal curto.'),
  Vocabulary(word: 'Cauda (de um cometa) ', meaning: 'Fluxo de gás ionizado e poeira que escapa da cabeça de um cometa (coma), quando ele se aproxima ou começa a se afastar do Sol. A cauda de tipo I consiste de gás ionizado expelido da coma pelo vento solar. A cauda tipo II é formada por grãos de poeira varridos da camada pela pressão da luz solar.'),
  Vocabulary(word: 'Centro de Massa ', meaning: ' Ponto no interior de um sistema isolado de corpos em torno do que esses corpos parecem se movimentar. Se o sistema for formado por dois corpos  o centro de massa localiza-se na linha unindo os seus centros. Se ambos os corpos tiverem a mesma massa, o centro situa-se no ponto médio dos dois;se um dos corpos for mais massivo, o centro de massa estará mais próximo dele.'),
  Vocabulary(word: 'Centro de Control  e Missão ', meaning: 'é a denominação atribuída às entidades que gerenciam os voos de veículos aeroespaciais, geralmente, desde o ponto de partida até o pouso ou o final da missão.'),
  Vocabulary(word: 'Chuva de meteoro ', meaning: 'Frequentes meteoros que se originam de um ponto comum do céu.'),
  Vocabulary(word: 'Ciclo Solar ', meaning: 'Variação cíclica da atividade solar (por exemplo, o aparecimento de manchas e explosões solares solares), que atinge um máximo a um intervalo médio de 11 anos. Como a polaridade das regiões magnéticas do Sol se reverte nesse período o ciclo completo tem na realidade 22 anos. As manchas solares revelam o ciclo solar e a rotação do Sol.'),
  Vocabulary(word: 'Cinturão Principal ', meaning: 'Ver asteróides.'),
  Vocabulary(word: 'Cinturões de Van Allen ', meaning: 'Duas zonas concêntricas toroidais que contêm partículas carregadas (elétrons e prótons) aprisionadas pelo campo magnético terrestre. Foram descobertos em 1958 pelo cientista espacial norte-americano James Van Allen.'),
  Vocabulary(word: 'Cobertura ', meaning: 'Ver footprint.'),
  Vocabulary(word: 'Comandos ', meaning: 'Conjunto de instruções que são enviadas ao satélite.'),
  Vocabulary(word: 'Cometa', meaning: 'Pequeno corpo composto de gelo e poeira. Quando distante do Sol, fica congelado e endurece. Mais perto do Sol, aquece-se e libera poeira e gás para formar uma grande cabeça fulgurante (a coma) e por vezes uma cauda.'),
  Vocabulary(word: 'Comprimento de onda ', meaning: 'Distância entre duas cristas sucessivas de uma onda se propagando.'),
  Vocabulary(word: 'Comprimento focal ', meaning: 'Distância entre o centro de uma lente ou a frente de um espelho côncavo e o ponto onde se forma a imagem nítida de um objeto distante.'),
  Vocabulary(word: 'Configuração (de um planeta) ', meaning: 'Um particular arranjo geométrico entre  a Terra, um planeta e o Sol.'),
  Vocabulary(word: 'Confinamento ', meaning: 'Instante brevemente antes da Grande Explosão quando quarks se ligaram para formar partículas como os prótons e os nêutrons.'),
  Vocabulary(word: 'Conjunção', meaning: 'Ocasião em que  dois corpos no Sistema Solar, como um planeta e o Sol, alinham-se tal como vistos da Terra.'),
  Vocabulary(word: 'Conjunção inferior ', meaning: 'Ocasião em que Mercúrio ou Vênus estão entre o Sol e a Terra.'),
  Vocabulary(word: 'Conjunção superior ', meaning: 'Ocasião em que Mercúrio ou Vênus, vistos da Terra, encontram-se  além do Sol, na mesma direção.'),
  Vocabulary(word: 'Constante Cosmológica ', meaning: 'Termo extra nas equações cosmológicas de Einstein que, se tiver um valor positivo corresponde a uma força repulsiva universal capaz de provocar expansão acelerada do Universo. Cosmólogos modernos a associam com a energia do vácuo (energia residual que, de acordo com a teoria quântica, existiria no vácuo), uma das possíveis formas da energia escura que se acredita permeia o Cosmos. Ver também energia escura.'),
  Vocabulary(word: 'Constante de Hubble ', meaning: 'Medida da taxa em que o Universo está se expandindo, encontrada marcando-se a distância das galáxias contra seus desvios para o vermelho.'),
  Vocabulary(word: 'Constelação', meaning: 'Originalmente um padrão estelar, mas hoje uma área do céu dentro de limites estabelecidos pela União Astronômica  Internacional. As constelações recebem nomes oficiais em latim e muitas delas representam personagens ou criaturas mitológicas.  Há 88 constelações.'),
  Vocabulary(word: 'Convecção', meaning: 'Transporte de calor  pelo movimento ascensional de elementos quente de gás ou de líquido.'),
  Vocabulary(word: 'Coroa solar ', meaning: 'A tênue camada mais externa  do Sol, visível somente quando ele está obscurecido num eclipse total. A coroa solar tem densidade muito baixa e temperatura extremamente elevada (1 a 5 milhões de graus Celsius).'),
  Vocabulary(word: 'Corpo Negro ', meaning: 'Corpo idealizado que absorve e emite toda radiação incidente sobre sua superfície, um irradiador  perfeito.'),
  Vocabulary(word: 'Cosmologia', meaning: 'O estudo da origem, natureza, estrutura e evolução do Universo.'),
  Vocabulary(word: 'Cosmologia geocêntrica ', meaning: 'Crença de que a Terra é o centro do universo.'),
  Vocabulary(word: 'Cosmologia heliocêntrica ', meaning: 'Teoria da formação e evolução do sistema solar com o Sol no Centro.'),
  Vocabulary(word: 'Cratera', meaning: 'Depressão em forma de tigela na superfície de um planeta ou satélite, ou num cume vulcânico. Uma cratera de impacto é produzida pela queda de um meteorito, asteróide ou cometa, enquanto uma cratera vulcânica é a cavidade por onde o vulcão ejeta material.'),
  Vocabulary(word: 'Crosta', meaning: 'Fina camada rochosa mais externa de um planeta ou de uma grande luz que, como a Terra, teve seu interior diferenciado em diversas camadas.'),
  Vocabulary(word: 'Declinação ', meaning: 'Distância angular de um objeto  ao norte  ou ao sul do equador celeste, medida em graus. É o equivalente da latitude  na Terra. Uma estrela no equador celeste tem declinação zero graus  enquanto num dos pólos tem declinação noventa graus.'),
  Vocabulary(word: 'Detritos ', meaning: 'Lixo ou resíduos espaciais. '),
  Vocabulary(word: 'Eclipse', meaning: ' Passagem de um corpo celeste pela sombra lançada por outro. Um eclipse lunar ocorre quando a Lua passa pela sombra da Terra, enquanto um eclipse solar se dá quando uma porção da Terra penetra a sombra lançada pela Lua. Um eclipse lunar total ocorre quando toda a Lua mergulha no cone de sombra da Terra. Já um eclipse lunar parcial é observado quando uma porção do disco lunar penetra  na sombra projetada pela Terra. Durante um eclipse solar total, todo o disco do Sol é obstruído pelo disco da Lua, e num eclipse solar parcial, apenas parte do disco do Sol fica encoberto. Se a Lua passa diretamente entre a Terra e o Sol, e está no apogeu, ela parecerá menor que o Sol, e seu disco será circundado por um anel brilhante da fotosfera solar; esse tipo de evento é chamado de eclipse anular.'),
  Vocabulary(word: 'Eclíptica', meaning: 'A trajetória seguida pelo Sol na esfera celeste durante o ano, que se deve ao movimento orbital da Terra. Os planetas sempre parecem próximos da eclíptica porque suas órbitas estão  todas num plano similar ao da Terra.'),
  Vocabulary(word: 'Efeito Doppler ', meaning: 'Alteração do comprimento de onda de uma radiação produzida pelo movimento relativo entre fonte e observador.'),
  Vocabulary(word: 'Eixo ', meaning: 'Linha imaginária que atravessa o centro de um objeto que gira ao seu redor. o eixo une os pólos.'),
  Vocabulary(word: 'Equador celeste ', meaning: 'Círculo imaginário na esfera celeste a meio caminho  entre os pólos celestes. Divide a esfera celeste em duas metades iguais, uma ao norte e a outra ao sul do equador.'),
  Vocabulary(word: 'Equinócio', meaning: 'Ocasião em que  o Sol está no equador celeste. Isso ocorre duas vezes por ano, em 20 de março (o equinócio de primavera ou vernal no hemisfério norte) e 22 ou 23 de setembro (o equinócio outonal no hemisfério norte). Num equinócio, o dia e a noite têm tamanhos aproximadamente iguais em toda a Terra.'),
  Vocabulary(word: 'Esfera celeste ', meaning: 'Esfera imaginária  que circunda a Terra, sobre a qual os objetos celestes parecem pousados.'),
  Vocabulary(word: 'Estrela', meaning: 'Esfera de gás  que produz energia  em seu centro por reações nucleares.'),
  Vocabulary(word: 'Estrela gigante ', meaning: 'Estrela que se tornou  maior e mais brilhante no final de sua vida.Estrelas que têm cerca de dez vezes a massa do Sol tornam-se supergigantes.'),
  Vocabulary(word: 'Estrelas supergigantes ', meaning: 'O maior e mais luminoso tipo de estrela. Estrelas pelo menos dez vezes maiores que o Sol crescem, tornando-se supergigantes, no final de suas vidas.'),
  Vocabulary(word: 'Estrela supergigante vermelha ', meaning: 'Estrela extremamente  grande,  de luminosidade muito alta e baixa temperatura superficial. Esse tipo de estrelas localiza-se no canto superior direito do diagrama de Hertzprung-Russel.'),
  Vocabulary(word: 'Espaço', meaning: 'é a área física do espaço do universo.'),
  Vocabulary(word: 'Excentricidade', meaning: 'Medida do quanto uma elipse se desvia  de um círculo perfeito. A excentricidade tem valores entre 0 e 1;  um círculo tem excentricidade 0 e as elipses mais alongadas se aproximam da excentricidade.'),
  Vocabulary(word: 'Explosão solar ', meaning: 'Liberação violenta de grande quantidade de energia – na forma de radiação eletromagnética, partículas subatômicas e ondas de choque – de um local situado logo acima da superfície solar.'),
  Vocabulary(word: 'Extragaláctico', meaning: 'Qualquer objeto fora de nossa própria galáxia.'),
  Vocabulary(word: 'Fase', meaning: 'Fração do disco de um planeta ou satélite iluminada pelo Sol, tal como vista da Terra.'),
  Vocabulary(word: 'Fase(da Lua) ', meaning: 'Aparência da Lua em diferentes pontos de sua órbita quando vista da Terra.'),
  Vocabulary(word: 'Fases da Lua ', meaning: 'Nomes dados para as formas aparente da Lua vistas da Terra.'),
  Vocabulary(word: 'Fenômenos de lente gravitacional ', meaning: 'Distorção da aparência de um objeto por uma fonte de gravidade entre ele e o observador.'),
  Vocabulary(word: 'Fóton ', meaning: 'Porção individual, ou quantum de energia eletromagnética, que pode ser considerada como uma partícula de luz. Quanto mais curto o comprimento de onda da radiação (e maior a frequência), maior a energia do fóton.'),
  Vocabulary(word: 'Fotosfera', meaning: 'A superfície visível do Sol ou de outra estrela.'),
  Vocabulary(word: 'Footprint (Satélite)', meaning: 'A pegada de um satélite de comunicações é a área terrestre que seus transponders oferecem cobertura e determina o diâmetro da antena parabólica necessária para receber o sinal de cada transponder.'),
  Vocabulary(word: 'Foguetão', meaning: 'Ver veículo lançador.'),
  Vocabulary(word: 'Galáxia', meaning: 'Massa de estrela mantida juntas pela gravidade. As galáxias são de dois tipos principais: espirais, que tem braços; e elípticas que não têm. Os diâmetros das galáxias situam-se entre cerca de mil anos-luz e centenas de milhares de anos -luz.'),
  Vocabulary(word: 'Galáxia elíptica ', meaning: 'Galáxia  que parece redonda ou elíptica ou elíptica e que, em geral,  contém pouco gás e poeira'),
  Vocabulary(word: 'Galáxia espiral ', meaning: 'Galáxia que resulta de uma concentração  central esferoidal de estrelas (o bojo), circundada por um disco plano, composto por gás,  poeira e estrelas, no interior do que se projetam os braços espirais.'),
  Vocabulary(word: 'Gamma-ray burst (GRB) (surto de raios gama)', meaning: 'Surto repentino  de raios gama de uma galáxia distante. Os GRBs são os mais poderosos eventos  explosivos do Universo atual. Podem ser produzidos por colisões entre estrelas de nêutrons ou buracos negros, ou ainda por um tipo extremo de supernova, a hipernova.'),
  Vocabulary(word: 'Geostacionária ', meaning: 'O satélite circula acima do equador ao redor da Terra na mesma direção que a Terra gira - isto é, de oeste para leste, com o mesmo tempo que os círculos da Terra, ou seja, um dia. O resultado desse movimento é que o satélite está sempre no mesmo ponto do céu, do ponto de vista de um observador estacionário na Terra. '),
  Vocabulary(word: 'Gigante vermelha ', meaning: 'Estrela que se torna maior e mais fria à medida que se aproxima do fim de sua vida.'),
  Vocabulary(word: 'Gravidade', meaning: 'Força trativa que age entre corpos materiais, partículas e fótons. De acordo com a teoria da gravitação desenvolvida por Isaac Newton (1642-1727), no século XVII (gravitação newtoniana), a força da gravidade entre dois corpos é proporcional ao produto de suas massas e inversamente proporcional ao quadrado da distância entre elas. Ver também Relatividade.'),
  Vocabulary(word: 'Heliocêntrico', meaning: '(1) Abordagem a partir do centro do Sol. \n(2) Tendo o Sol no seu centro (de um sistema). Coordenadas heliocêntricas especificam a posição de um objeto como se fosse visto do centro do Sol. Um corpo que se move em torno do Sol segue uma órbita heliocêntrica. Cosmologia heliocêntrica é um modelo de universo, como o proposto por Nicolau Copérnico (1473-1543) em 1543, em que os planetas orbitam um Sol central.'),
  Vocabulary(word: 'Heliosfera', meaning: 'Região do espaço em torno do Sol onde o vento solar e o campo magnético interplanetário são confinados pela pressão do meio interestelar. Sua fronteira é chamada heliopausa.'),
  Vocabulary(word: 'Inclinação', meaning: 'Ângulo  de um plano em relação a outro. A inclinação de uma órbita planetária é o ângulo entre esse plano e o plano da eclíptica (o plano da órbita da Terra). A inclinação do equador de um planeta é o ângulo entre o plano do equador e o da órbita do planeta.'),
  Vocabulary(word: 'Internet ', meaning: 'é uma  rede de computadores global que fornece uma variedade de recursos de informação e comunicação, consistindo de redes interconectadas usando protocolos de comunicação padronizados.'),
  Vocabulary(word: 'Íon ', meaning: 'Partícula ou sistema de partículas com carga elétrica. Íons positivos são normalmente formadas quando um átomo perde um ou mais elétrons e íons negativos quando um átomo captura um ou mais elétrons.'),
  Vocabulary(word: 'Juliano', meaning: 'O calendário juliano é um método para identificar o dia atual contando o número de dias que passaram desde uma data passada e arbitrária. O número de dias é chamado dia juliano, abreviado como DJ.'),
  Vocabulary(word: 'Kepler, leis do movimento planetário ', meaning: 'Ver leis de Kepler do movimento planetário.'),
  Vocabulary(word: 'Korolev ', meaning: 'Sergei Pavlovich Korolev (russo: trabalhou como engenheiro-projetista de foguetes soviético e projetista de espaçonaves durante a Corrida Espacial entre os Estados Unidos e a União Soviética nas décadas de 1950 e 1960.'),
  Vocabulary(word: 'KU  ', meaning: ' uma banda de frequência de microondas utilizada para comunicação por satélite e radiodifusão, utilizando frequências de cerca de 12 gigahertz para recepção terrestre e 14 gigahertz para transmissão.'),
  Vocabulary(word: 'Leis de Kepler do Movimento Planetário ', meaning: 'Três leis, concebidas no começo do século 17, por Johannes Kepler, que descrevem o movimento orbital dos planetas em torno do Sol. A primeira lei afirma que  a órbita de cada planeta é uma elipse, com o Sol ocupando um dos focos; a segunda lei diz que a velocidade de um planeta é inversamente proporcional à distância ao Sol, a cada instante; e a terceira lei estabelece que o quadrado do período orbital do planeta é proporcional ao cubo do comprimento do semi-eixo maior da sua órbita elíptica.'),
  Vocabulary(word: 'Lua', meaning: 'Satélite natural de um planeta. Usa-se inicial maiúscula quando se está se referindo à nossa própria Lua.'),
  Vocabulary(word: 'Magnitude', meaning: 'Escala para a medição do brilho de objetos  celestes. Os objetos mais brilhantes recebem números pequenos ou até negativos, ao passo que os pouco brilhantes têm números grandes.'),
  Vocabulary(word: 'Magnitude absoluta ', meaning: 'Número que indica a verdadeira emissão de luz, ou luminosidade, de uma estrela. É a magnitude que a estrela teria se colocada a uma distância-padrão de 10 parsecs (32,6 anos-luz).'),
  Vocabulary(word: 'Magnitude aparente ', meaning: 'O brilho de um objeto celeste tal como visto da Terra. Quanto mais distante está o objeto, menos brilhante parece.'),
  Vocabulary(word: 'Meridiano', meaning: 'Linha imaginária no céu que vai do norte para o sul através dos pólos celestes e do zênite do observador. Um objeto no meridiano está em seu ponto mais alto acima do horizonte.'),
  Vocabulary(word: 'Meteorito', meaning: 'Naco de rocha  ou metal proveniente do espaço que cai na superfície da Terra ou de outro corpo do Sistema Solar.'),
  Vocabulary(word: 'Meteoro', meaning: 'Risca de luz, também chamada estrela cadente, causada por um grão de poeira queimando-se na atmosfera.'),
  Vocabulary(word: 'Movimento retrógrado ', meaning: ' Movimento de leste para oeste, oposto à direção normal do movimento do Sistema Solar.'),
  Vocabulary(word: 'Nanosatélite', meaning: 'são satélites artificiais com dimensões e massa reduzidos. Satélites miniaturizados tem uma massa menor que 500 kg. '),
  Vocabulary(word: 'Nebulosa', meaning: 'Nuvem de gás e poeira, geralmente encontrada nos braços espirais de uma galáxia. Algumas  nebulosas são brilhantes, sendo iluminadas  por estrelas, em seu interior, ao passo que outras são escuras.'),
  Vocabulary(word: 'Nebulosa planetária ', meaning: 'Envoltório de gás emitido por uma estrela no final de sua vida.'),
  Vocabulary(word: 'Nova', meaning: 'Estrela que entra em erupção temporariamente, tornando-se milhares de vezes mais brilhante durante algumas semanas ou alguns meses.'),
  Vocabulary(word: 'Objeto do céu profundo ', meaning: 'Objeto fora do Sistema Solar, como um aglomerado de estrelas, uma nebulosa ou uma galáxia.'),
  Vocabulary(word: 'Ocular ', meaning: 'Lente (ou , na prática, uma combinação de duas ou mais lentes) usada para ampliar a imagem produzida por um telescópio.'),
  Vocabulary(word: 'Ocultação ', meaning: 'Evento em que um corpo celeste passa em frente a outro ; em geral quando a Lua passa em frente a uma estrela  ou planeta.'),
  Vocabulary(word: 'Oposição', meaning: 'Ocasião em que um corpo do Sistema Solar  situa-se na direção oposta à do Sol, tal como visto da Terra.'),
  Vocabulary(word: 'Órbita ', meaning: 'é  a trajetória  feita por um corpo ao redor de outro. '),
  Vocabulary(word: 'Perigeu ', meaning: 'Ponto mais próximo de um corpo em órbita da Terra. Ver também apogeu.'),
  Vocabulary(word: 'Planeta ', meaning: 'Corpo que orbita o Sol ou outra estrela e reluz por refletir o brilho da estrela.'),
  Vocabulary(word: 'Planeta anão ', meaning: 'Corpo celeste no Sistema Solar que orbita o Sol e é grande o bastante  para ser esférico, mas diferentemente dos planetas, não limpou a região em torno  de sua órbita de outros corpos.'),
  Vocabulary(word: 'Planeta extrasolar ', meaning: 'Planeta que gira em torno de uma outra estrela que não é o Sol.'),
  Vocabulary(word: 'Precessão', meaning: 'Lenta oscilação da Terra no espaço, que leva seu eixo a descrever um círculo na esfera celeste a cada 25.800 anos. Em consequência da precessão, as coordenadas das estrelas mudam continuamente.'),
  Vocabulary(word: 'Pulsar ', meaning: 'Estrela de nêutrons que emite pulsos de ondas de rádio e outras radiações à medida que gira em torno de seu eixo.'),
  Vocabulary(word: 'Penumbra', meaning: 'é a parte de uma sombra onde a fonte de luz é apenas parcialmente bloqueada.'),
  Vocabulary(word: 'Quasar ', meaning: 'Núcleo intensamente luminoso de uma galáxia distante, causado ao que se supõe por gás ultra quente circulando em torno de um grande  buraco negro em seu centro.'),
  Vocabulary(word: 'Radiante', meaning: 'Ponto no céu a partir do qual os membros de uma chuva de meteoros parecem divergir.'),
  Vocabulary(word: 'Resolução ', meaning: 'Capacidade de um instrumento óptico de distinguir detalhes finos, como as estrelas individuais numa estrela dupla próxima ou marcas nos planetas.'),
  Vocabulary(word: 'Rosobonexport', meaning:'é a única agência intermediária do Estado para as exportações / importações de produtos relacionados com a defesa, tecnologias e serviços da Rússia.'),
  Vocabulary(word: 'RSC Energia',  meaning:'é a empresa espacial  de foguetes, líder na Rússia, a principal organização no sector de sistemas espaciais tripulados.'),
  Vocabulary(word: 'Satélite', meaning: 'Qualquer corpo que gire em torno de outro, em geral uma lua de um planeta.'),
  Vocabulary(word: 'Sistema Solar ', meaning: 'A família de planetas, seus satélites e objetos como asteróides e cometas que orbitam o Sol.'),
  Vocabulary(word: 'Solstício ', meaning: 'A ocasião  em que o Sol chega ao ponto mais ao norte ou mais ao sul do equador celeste (por volta de 21 de junho no hemisfério norte celeste  e de 22 dezembro no hemisfério sul celeste).'),
  Vocabulary(word: 'Supernova', meaning: 'Estrela que explode no fim de sua vida , tornando-se milhões  de vezes mais brilhantes durante algumas  semanas ou alguns meses.'),
  Vocabulary(word: 'Tabela periódica ', meaning: 'Lista dos elementos químicos de acordo com suas propriedades e criada por Dmitri Ivanovich Mendeleiev.'),
  Vocabulary(word: 'Telescópio ', meaning: ' Instrumento para observar objetos distantes.'),
  Vocabulary(word: 'Telescópio Cassegrain ', meaning: 'Tipo de telescópio reflete em que  um espelho secundário reflete a luz de volta através de um furo no centro do espelho principal onde estão colocados a ocular e outros detectores.'),
  Vocabulary(word: 'Telescópio refletor ', meaning: 'Telescópio no qual o principal componente para captação de luz é um espelho côncavo.'),
  Vocabulary(word: 'Telescópio refrator ', meaning: 'Telescópio no qual o principal componente para captação de luz é uma lente.'),
  Vocabulary(word: 'Temperatura  (Celsius) ', meaning: 'Medida de temperatura em uma escala na qual a água congela a zero graus e ferve a cem graus.'),
  Vocabulary(word: 'Temperatura (Fahrenheit) ', meaning: 'Medida de temperatura em uma escala na qual a água congela a 32 graus e ferve a 212 graus.'),
  Vocabulary(word: 'Temperatura (Kelvin) ', meaning: 'Medida da temperatura absoluta em intervalos de graus Celsius. S água congela a 273 K e ferve a 373 K.'),
  Vocabulary(word: 'Teoria científica (hipótese) ', meaning: 'Idéia geral sobre o mundo natural que está sujeita a verificação e refinamento.'),
  Vocabulary(word: 'Teoria da captura ', meaning: 'Idéia de que a Lua foi criada em uma localização diferente do sistema solar e subsequentemente capturada pela gravidade da Terra.'),
  Vocabulary(word: 'Teoria da cocriação ', meaning: 'Teoria que supõe que a Lua se formou simultâneamente com a Terra e em órbita dela.'),
  Vocabulary(word: 'Teoria da colisão-ejeção ', meaning: ' Teoria que supõe que a Lua foi criada por um impacto de um objeto de tamanho planetário com a Terra; atualmente considerada a teoria mais plausível para a formação da Lua.'),
  Vocabulary(word: 'Teoria da fissão ', meaning: 'Teoria que supõe que a Lua se formou de matéria lançada da Terra porque o planeta estava girando extremamente rápido.'),
  Vocabulary(word: 'Teoria da grande unificação (GUT) ', meaning: 'Teoria que descreve e explica as quatro forças físicas.'),
  Vocabulary(word: 'Tempo Universal (TU) ', meaning: 'Escala de tempo baseada no movimento diário aparente do Sol tal como visto do meridiano de Greenwich. É o mesmo que Greenwich. É o mesmo que Greenwich Mean Time (GMT).'),
  Vocabulary(word: 'Último quarto da Lua ', meaning: 'Fase da decrescente quando observadores localizados na Terra enxergam a metade da parte iluminada da Lua. '),
  Vocabulary(word: 'Umbra', meaning: 'Parte central completamente escura da sombra.'),
  Vocabulary(word: 'Unidade Astronômica ', meaning: 'A distância  média  entre a Terra e o Sol, 149.597.870 km.'),
  Vocabulary(word: 'Universo', meaning: 'Tudo que existe, incluindo toda a matéria, espaço e o tempo. '),
  Vocabulary(word: 'Universo aberto ', meaning: 'Universo com uma forma hiberbólica; falta a massa necessária para que algum dia o universo pare de se expandir e volte a colapsar. Ele se expandirá para sempre.'),
  Vocabulary(word: 'Universo dominado pela matéria ', meaning: 'Um universo no qual o campo de radiação que preenchia todo o espaço é incapaz de impedir a existência de átomos nêutrons.'),
  Vocabulary(word: 'Universo dominado pela radiação ', meaning: 'Época no começo da vida do universo em que a radiação eletromagnética impedia a combinação dos íons e elétrons para formar átomos neutros.'),
  Vocabulary(word: 'Universo em expansão ', meaning: 'Movimento de afastamento de cada superaglomerado de galáxias de todos os outros.'),
  Vocabulary(word: 'Vazio', meaning: 'Enorme região  do universo quase esférica onde excepcionalmente poucas galáxias são encontradas.'),
  Vocabulary(word: 'Vento Solar ', meaning: 'Fluxo de partículas em sua maior parte prótons e elétrons, que provém  do Sol e atravessa o Sistema Solar.'),
  Vocabulary(word: 'Vela padrão ', meaning: 'Objeto cuja luminosidade, por ser conhecida, pode ser usada para deduzir a distância de uma galáxia.'),
  Vocabulary(word: 'Velocidade (speed) ', meaning: 'Taxa na qual um objeto se movimenta.'),
  Vocabulary(word: 'Velocidade (velocity) ', meaning: 'Grandeza física que especifica tanto a direção quanto a rapidez de um objeto.'),
  Vocabulary(word: 'Velocidade transversa ', meaning: 'Porção da velocidade de um objeto perpendicular à nossa linha de visada.'),
  Vocabulary(word: 'Vento solar ', meaning: 'Fluxo de partículas (principalmente elétrons e prótons) para fora do Sol.'),
  Vocabulary(word: 'Via Láctea ', meaning: 'A faixa de luz de brilho débil e enevoada que pode ser vista cruzando o céu nas noites escuras , composta de estrelas  distantes dentro de nossa própria galáxia. O nome é usado também para nossa galáxia como um todo.'),
  Vocabulary(word: 'Zênite', meaning: 'O ponto no céu exatamente acima do observador.'),
  Vocabulary(word: 'Zodíaco', meaning: 'Faixa de céu de ambos os lados da eclíptica através da qual o Sol e os planetas se movem.'),
  Vocabulary(word: 'Zona radioativa ', meaning: 'Região dentro de uma estrela onde a energia é transportada para fora pelo movimento de fótons através do gás de um local quente para outro local mais frio.'),

];

//-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
class _VocabularyListState extends State<Third> {
  TextEditingController searchController = new TextEditingController();
  String filter;

  @override  initState() {
    searchController.addListener(() {
      setState(() {
        filter = searchController.text;
      });
    });
  }

  @override  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: primarycolor,
            title: Text('Glossário',
                            style: TextStyle(
                                color: Colors.blue[900], fontWeight: FontWeight.bold))),
        body: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(8.0),
              child: new TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Procurar',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  ),
                ),
              ),
            new Expanded(
              child: new ListView.builder(
                itemCount: vocabulary.length,
                itemBuilder: (context, index) {
                  // if filter is null or empty returns all data
                  return filter == null || filter == ""
                      ? ListTile(
                    title: Text(
                      '${vocabulary[index].word}',
                      ),
                    subtitle: Text('${vocabulary[index].meaning}'),
                    leading: new CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text(
                            '${vocabulary[index].word.substring(0, 1)}')),
                    onTap: () => _onTapItem(context, vocabulary[index]),
                    )
                      : '${vocabulary[index].word}'
                      .toLowerCase()
                      .contains(filter.toLowerCase())
                      ? ListTile(
                    title: Text(
                      '${vocabulary[index].word}',
                      ),
                    subtitle: Text('${vocabulary[index].meaning}'),
                    leading: new CircleAvatar(
                        backgroundColor: Colors.blue,

                        child: Text(
                            '${vocabulary[index].word.substring(0, 1)}')),
                    onTap: () =>
                        _onTapItem(context, vocabulary[index]),
                    )
                      : new Container();
                },
                ),
              ),
          ],
          ));
  }

  void _onTapItem(BuildContext context, Vocabulary post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text(post.meaning)));
  }
}


class Vocabulary {
  final String word;
  final String meaning;

  const Vocabulary({this.word, this.meaning});
}