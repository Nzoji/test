import 'package:angosat_educa2/pages/first_page.dart' as first;
import 'package:angosat_educa2/pages/second_page.dart' as second;
import 'package:angosat_educa2/pages/third_page.dart' as third;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() async{
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //theme: ThemeData(primaryColor: primarycolor ,),
      home: MyHomePage(title: 'ANGOSAT EDUCA'),
      );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState(){
    super.initState();
    controller = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){



    return new Scaffold(
        appBar: new AppBar(title: new Text("ANGOSAT EDUCA"),
                               actions: <Widget>[
                                 IconButton(
                                     icon: const Icon(Icons.info),
                                     tooltip: 'Sobre Nós',
                                     onPressed: () {
                                       showDialog(
                                         context: context,
                                         builder: (BuildContext context) {
                                           // return object of type Dialog
                                           return AlertDialog(
                                             title: new Text("Sobre o ANGOSAT EDUCA"),
                                             content: new Text("O ANGOSAT EDUCA é um aplicativo de educação espacial, do Gabinete de Gestão do Programa Espacial Nacional direcionado para estudantes e amantes de ciência e tecnologia espacial."),
                                             actions: <Widget>[
                                               // usually buttons at the bottom of the dialog
                                               new FlatButton(
                                                 child: new Text("FECHAR"),
                                                 onPressed: () {
                                                   Navigator.of(context).pop();
                                                 },
                                                 ),
                                             ],
                                             );
                                         },
                                         );
                                     }

                                     ),
                               ],
                               backgroundColor: Colors.indigo[900],
                               bottom: new TabBar(
                                   controller: controller,
                                   tabs: <Tab>[
                                     new Tab(icon: new Icon(Icons.home)),
                                     new Tab(icon: new Icon(Icons.menu)),
                                     new Tab(icon: new Icon(Icons.search))
                                   ]
                                   )
                           ),
        /* bottomNavigationBar: new Material(
                               color: Colors.indigo[900],
                                  child: new TabBar(
                                  controller: controller,
                                    tabs: <Tab>[
                                    new Tab(icon: new Icon(Icons.home)),
                                     new Tab(icon: new Icon(Icons.menu)),
                                     new Tab(icon: new Icon(Icons.search))
                                   ]
                                 )
                                ),*/
        body: new TabBarView(
            controller: controller,
            children: <Widget>[
              new first.First(),
              new second.Second(),
              new third.Third(),
            ]
            )
        );
  }
}