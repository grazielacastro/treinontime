import 'package:flutter/material.dart';
import 'package:treinontime/login.dart';
import 'package:treinontime/main.dart';
import 'package:treinontime/sobre.dart';
import 'package:treinontime/configuracoes.dart';

class TelaConta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Minha Conta'),
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

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [       
              Text('Minha Conta!', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              Text('Alterar dados.', style: TextStyle(fontSize: 18, color: Colors.black, fontStyle: FontStyle.italic),),
              SizedBox(height: 20),
              Center(child: CircleAvatar(backgroundImage: AssetImage('assets/imagens/grazielacastro.png',),radius: 100,)),
              TextFormField(decoration: InputDecoration(hintText: 'Nome Completo',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'CPF',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Telefone com DDD',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Endereço',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Cidade',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Email',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Alterar Senha',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Repetir Senha',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    child: Text('Salvar',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.bold,)),
                    color: Theme.of(context).primaryColor.withOpacity(.2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    onPressed: (){debugPrint("botão acionado.");},
                  ),
                  FlatButton(
                    child: Text('Sair',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.bold,)),
                    color: Theme.of(context).primaryColor.withOpacity(.2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TelaEntrar()),);},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlatButton(
                    child: Text('Deletar Conta!',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TelaEntrar()),);},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}