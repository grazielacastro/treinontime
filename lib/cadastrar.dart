import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:treinontime/entrar.dart';
import 'package:treinontime/main.dart';

class TelaCadastrar extends StatefulWidget {
  @override
  _TelaCadastrarState createState() => _TelaCadastrarState();
}

class _TelaCadastrarState extends State<TelaCadastrar> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var txtNome = TextEditingController();
  var txtCpf = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();  
  var db = FirebaseFirestore.instance;  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,         
            children: [
              Text('Informe seus Dados!', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
              Center(child: Icon(Icons.person_add,size: 120,color: Theme.of(context).primaryColor),),
              TextFormField(controller: txtNome, decoration: InputDecoration(hintText: 'Nome Completo',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(controller: txtCpf, decoration: InputDecoration(hintText: 'CPF',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(controller: txtEmail, decoration: InputDecoration(hintText: 'Email',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(controller: txtSenha, decoration: InputDecoration(hintText: 'Senha',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    child: Text('Voltar',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.bold,)),color: Theme.of(context).primaryColor.withOpacity(.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TelaEntrar()),);},
                  ),
                  FlatButton(
                    child: Text('Concluir',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.bold,)),color: Theme.of(context).primaryColor.withOpacity(.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    onPressed: () async{
                      //ADICIONAR um novo DOCUMENTO a COLEÇÃO
                      await db.collection("usuario").add(
                        {
                          "nome": txtNome.text,
                          "cpf": txtCpf.text,
                          "email": txtEmail.text,
                          "senha": txtSenha.text,
                          }
                      );
                    Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}