import 'package:flutter/material.dart';
import 'package:treinontime/agenda.dart';
import 'package:treinontime/conta.dart';
import 'package:treinontime/configuracoes.dart';
import 'package:treinontime/main.dart';

class TelaSobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Sobre o Aplicativo'),
      ),
      
      drawer: Drawer(
        child: ListView(children: [
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

      body: Container(
        padding: EdgeInsets.all(40),
        child: ListView(
          children: [
            Center(child: CircleAvatar(backgroundImage: AssetImage('assets/imagens/grazielacastro.png',),radius: 150,)),
            SizedBox(height: 10),
            Center(child: Text('Graziela Castro', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 28, fontFamily: 'Roboto', fontWeight: FontWeight.bold, decoration: TextDecoration.none),)),
            SizedBox(height: 20),
            Text('TreinOnTime é desenvolvido para motivar as pessoas a terem uma vida ativa e poder contar com a orientação de um Profissional de Educação Física.', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20, fontFamily: 'Roboto',decoration: TextDecoration.none),),
            Text('Tem como objetivo conectar Treinadores e Alunos facilitando sua interação. Os Treinadores disponibilizam seus horários e os Alunos pode consultar e agendar facilmente seus treinos.', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20, fontFamily: 'Roboto',decoration: TextDecoration.none),),
            Text('Bora Treinar?', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20, fontFamily: 'Roboto',fontWeight: FontWeight.bold, decoration: TextDecoration.none),),
          ],
        ),
      ),
    );
  }
}