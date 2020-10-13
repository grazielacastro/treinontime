import 'package:flutter/material.dart';
import 'package:treinontime/conta.dart';
import 'package:treinontime/configuracoes.dart';
import 'package:treinontime/main.dart';
import 'package:treinontime/sobre.dart';

class TelaAgenda extends StatefulWidget {
  @override
  _TelaAgendaState createState() => _TelaAgendaState();
}

class _TelaAgendaState extends State<TelaAgenda> {

  var scaffoldKey = GlobalKey<ScaffoldState>();
  var txtAgenda = TextEditingController();
  var horarios = List<String>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,

     appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Minha Agenda'),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: txtAgenda,
                    decoration: InputDecoration(
                      labelText: 'Adicionar Dia e Horário do Treino',
                    ),
                  ),
                ),

                SizedBox(width: 30),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: (){
                    setState(() {
                      horarios.add(txtAgenda.text);
                      horarios.sort();
                      txtAgenda.text = '';
                      scaffoldKey.currentState.showSnackBar(
                        SnackBar(
                          content: Text('Horário adicionado com sucesso.'),
                          duration: Duration(seconds: 3),
                        ),
                      ); 
                    });
                  },
                )
              ],
            ),
            SizedBox(height: 30,),

            Expanded(
              child: ListView.separated(
                //reverse: true,
                itemBuilder: (context,index){
                  return Container(
                    child: ListTile(
                      leading: Icon(Icons.fitness_center),
                      title: Text(horarios[index], style: TextStyle(fontSize: 24)),
                      trailing: IconButton(
                        icon: Icon(Icons.delete_outline),
                        onPressed: (){
                          setState(() {
                            horarios.removeAt(index);

                            scaffoldKey.currentState.showSnackBar(
                              SnackBar(
                                content: Text('Horário removido com sucesso.'),
                                duration: Duration(seconds: 3),
                              ),
                            );
                          });
                        },
                      ),
                    ),
                  );
                },

                separatorBuilder: (context, index){
                  return Divider(thickness: 1, color: Colors.grey);
                },

                itemCount: horarios.length

              ),
            ),
          ],
        ),
      ),
    );
  }
}
