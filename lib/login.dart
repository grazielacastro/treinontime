import 'package:flutter/material.dart';
import 'package:treinontime/contaaluno.dart';
import 'package:treinontime/contatreinador.dart';
import 'package:treinontime/main.dart';

class TelaEntrar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),          
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,                 
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.fitness_center, size: 50, color: Theme.of(context).primaryColor),
                  SizedBox(width: 10),
                  Text('TreinOnTime', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18),),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Bora Treinar???', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10),
                  Text('Informe seu dados de acesso.', style: TextStyle(fontSize: 18, color: Colors.black, fontStyle: FontStyle.italic),),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),
                      ),),
                    SizedBox(height: 10),
                    TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Senha',
                      hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),
                      ),),
                ],
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    child: Text('Entrar',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.bold,)),
                    color: Theme.of(context).primaryColor.withOpacity(.2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()),);},
                  ),
                  Text('Esqueceu a Senha?',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontStyle: FontStyle.italic,)),
                ],
              ),

              SizedBox(height: 20),
              Row(
                children: [
                  Text('Ainda não tem Conta?',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16, fontStyle: FontStyle.italic,)),
                  FlatButton(
                    child: Text('Cadastrar!',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TelaContaAluno()),);},
                  ),
                ],
              ),              
              SizedBox(height: 100),
              Row(
                children: [
                  Text('Sou Treinador(a)?',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16, fontStyle: FontStyle.italic,)),
                  FlatButton(
                    child: Text('Marcar Treinos!',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic,)),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TelaContaTreinador01()),);
                    },
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