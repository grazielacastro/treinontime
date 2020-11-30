import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:treinontime/model/agenda_dados.dart';

class TelaAgenda extends StatefulWidget {
  @override
  _TelaAgendaState createState() => _TelaAgendaState();
}

class _TelaAgendaState extends State<TelaAgenda> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var txtAgenda = TextEditingController();
  var db = FirebaseFirestore.instance;

  //Lista Dinamica de objetos Agenda
  List<Agenda> agenda = List();

  //Declaração de um objeto para verifica atualizações no Firestore
  StreamSubscription<QuerySnapshot> ouvidor;

  @override
  void initState(){
    super.initState();
    //Registrar o ouvidor
    ouvidor?.cancel();
    ouvidor = db.collection("agenda").snapshots().listen((res) {
      setState(() {
        agenda = res.docs.map((e) => Agenda.fromMap(e.data(), e.id)).toList();        
      });
     });
  }

  //Recuperar um documento a partir do ID
  void getDocumentById(String id) async{
    await db.collection("agenda").doc(id).get()
    .then((doc){
      txtAgenda.text = doc.data()['agenda'];
    });
  }

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context).settings.arguments;
    if(id != null){
      if(txtAgenda.text == ''){
        getDocumentById(id);
      }
    }

    return Scaffold(
      key: scaffoldKey,

     appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Minha Agenda'),
      ),
      
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: TextField(
                controller: txtAgenda,
                decoration: InputDecoration(labelText: 'Adicionar Dia e Horário do Treino',),
              ),
            ),
            SizedBox(width: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text("Salvar",style: TextStyle(color: Colors.white, fontSize: 20)),
                  color: Colors.deepPurple,
                  onPressed: ()async{
                    if(id == null){
                      //Adicionar um Novo Documento na Agenda
                      await db.collection("agenda").add(
                        {
                          "agenda": txtAgenda.text,
                        }
                      );
                    }else{
                      //Atualizar dados do Documento
                      await db.collection("agenda").doc(id).update(
                        {
                          "agenda": txtAgenda.text,
                        }
                      );
                    }
                    Navigator.pop(context);
                  },
                ),

                SizedBox(width: 20),
                
                RaisedButton(
                  child: Text("Cancelar",style: TextStyle(color: Colors.white, fontSize: 20)),
                  color: Colors.deepPurple,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],        
        ),
      ),
    );
  }
}