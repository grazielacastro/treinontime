import 'package:flutter/material.dart';
import 'package:treinontime/login.dart';
import 'package:treinontime/main.dart';

class TelaContaAluno extends StatefulWidget {
  @override
  _TelaContaAlunoState createState() => _TelaContaAlunoState();
}

class _TelaContaAlunoState extends State<TelaContaAluno> {
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
              TextFormField(decoration: InputDecoration(hintText: 'Nome Completo',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'CPF',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Telefone com DDD',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Endereço',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Cidade',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Email',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Senha',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Repetir Senha',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
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
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()),);},
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