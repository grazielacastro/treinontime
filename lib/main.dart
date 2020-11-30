import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:treinontime/agenda.dart';
import 'package:treinontime/configuracoes.dart';
import 'package:treinontime/imc.dart';
import 'package:treinontime/inicio.dart';
import 'package:treinontime/entrar.dart';
import 'package:treinontime/pesquisar.dart';
import 'package:treinontime/sobre.dart';
import 'package:treinontime/treinos.dart';
import 'package:treinontime/conta.dart';

void main() async {

  //Registrar o Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/entrar',
    routes: {
      '/entrar': (context) => TelaEntrar(),
      '/agenda': (context) => TelaAgenda(),
    },
    
    theme:ThemeData(
      primaryColor: Colors.deepPurple,
      backgroundColor: Colors.white,
      fontFamily: 'Roboto',
    ),
    title: 'TreinOnTime',
  ));

/*//Teste do Firebase
var db = FirebaseFirestore.instance;
db.collection("agenda").add(
  {
    "agenda" : "sexta-feira 10h",
  }
);*/

}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectIndex = 0;
  final telas = [TelaInicio(),TelaPesquisar(),TelaTreinos(),TelaImc(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(children: [
            Icon(Icons.fitness_center, size: 40,),
            SizedBox(width: 10),
            Text('TreinOnTime'),
          ],),
      ),

      drawer: Drawer(
        child: 
        ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture:CircleAvatar(backgroundImage: AssetImage('assets/imagens/grazielacastro.png'),),
              accountName: Text("Nome Completo"),
              accountEmail:Text("email@email.com"),              
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()),);},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Minha Conta"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TelaConta()),);},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Configurações"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TelaConfiguracoes()),);},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Sobre"),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TelaSobre()),);},
            ),
          ],
        ) ,
      ),

      body: telas[_selectIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        iconSize: 30,
        onTap: (index){
          setState(() { _selectIndex = index;});          
        },        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Inicio',),
            backgroundColor: Theme.of(context).primaryColor,            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Pesquisar',),
            backgroundColor: Theme.of(context).primaryColor,            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer),
            title: Text('Treinos',),
            backgroundColor: Theme.of(context).primaryColor,            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            title: Text('IMC',),
            backgroundColor: Theme.of(context).primaryColor,            
          ),
        ],
      ),
    );
  }
}