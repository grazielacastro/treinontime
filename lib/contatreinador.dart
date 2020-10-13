import 'package:flutter/material.dart';
import 'package:treinontime/agenda.dart';
import 'package:treinontime/login.dart';

class TelaContaTreinador01 extends StatefulWidget {
  @override
  _TelaContaTreinador01State createState() => _TelaContaTreinador01State();
}

class _TelaContaTreinador01State extends State<TelaContaTreinador01> {
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
                    child: Text('Próximo',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.bold,)),color: Theme.of(context).primaryColor.withOpacity(.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TelaContaTreinador02()),);},
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

class TelaContaTreinador02 extends StatefulWidget {
  @override
  _TelaContaTreinador02State createState() => _TelaContaTreinador02State();
}

class _TelaContaTreinador02State extends State<TelaContaTreinador02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,         
            children: [
              Text('Sobre os Treinos!', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
              Center(child: Icon(Icons.fitness_center,size: 120,color: Theme.of(context).primaryColor),),
              TextFormField(decoration: InputDecoration(hintText: 'Modalidade',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Descrição',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Local (Espaço Treinador, Espaço Aluno)',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Planos (2x Semana, 3x Semana, Livre)',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              TextFormField(decoration: InputDecoration(hintText: 'Valor da Mensalidade',hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),),),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    child: Text('Voltar',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.bold,)),color: Theme.of(context).primaryColor.withOpacity(.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TelaContaTreinador01()),);},
                  ),
                  FlatButton(
                    child: Text('Concluir',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.bold,)),color: Theme.of(context).primaryColor.withOpacity(.2),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => TelaAgenda()),);},
                  ),
                ],
              ),
            ],),),),
    );
  }
}