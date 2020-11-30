import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'model/agenda_dados.dart';

class TelaTreinos extends StatefulWidget {
  
  @override
  _TelaTreinosState createState() => _TelaTreinosState();
}

class _TelaTreinosState extends State<TelaTreinos> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: StreamBuilder<QuerySnapshot>(

        stream: db.collection("agenda").snapshots(),
        builder: (context,snapshot){

          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(child: Text ("Erro ao conectar ao Firebase"));
            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());
            default: return ListView.builder(
              itemCount: agenda.length,
              itemBuilder: (context, index){
                
                return ListTile(
                  title: Text(agenda[index].agenda, style: TextStyle(fontSize: 20, color: Colors.black, fontStyle: FontStyle.italic)),
                  subtitle: Text(agenda[index].horario, style: TextStyle(fontSize: 20, color: Colors.black, fontStyle: FontStyle.italic)),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: (){
                      db.collection("agenda").doc(agenda[index].id).delete();
                    },
                  ),

                  onTap: (){
                    Navigator.pushNamed(
                      context, '/agenda',
                      arguments:agenda[index].id
                      );
                  },
                );
              }
            );
          }
        }
      ),
    
    floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context,'/agenda');
          },
      ),
    );
  }
}