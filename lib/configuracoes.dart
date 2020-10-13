import 'package:flutter/material.dart';
import 'package:treinontime/conta.dart';
import 'package:treinontime/main.dart';
import 'package:treinontime/sobre.dart';

class TelaConfiguracoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Configurações'),
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

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [            
            Text('Configurações!', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
            Text('Alterar Configurações e Preferências.', style: TextStyle(fontSize: 18, color: Colors.black, fontStyle: FontStyle.italic),),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}