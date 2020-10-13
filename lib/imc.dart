import 'package:flutter/material.dart';
import 'dart:math';

class TelaImc extends StatefulWidget {
  @override
  _TelaImcState createState() => _TelaImcState();
}

class _TelaImcState extends State<TelaImc> {

  //Chave que identifica unicamente o formulário
  var formKey = GlobalKey<FormState>();

  //Atributos para Armazer Valores do Peso e Altura
  var txtPeso = TextEditingController();
  var txtAltura = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
            child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('IMC!', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10),
                    Text('Informe Peso e Altura para Calcular o seu Índice de Massa Corporal.', style: TextStyle(fontSize: 18, color: Colors.black, fontStyle: FontStyle.italic),),
                    SizedBox(height: 20),
                    Center(child: Icon(Icons.calculate,size: 120,color: Theme.of(context).primaryColor)),
                    campoTexto("Peso", txtPeso),
                    campoTexto("Altura", txtAltura),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        botao("Calcular"),
                        limpar('Limpar'),
                      ],
                    ),
                  ],
              ),
            ),
          ),
        ),
    );
  }

  //
  // METODO CAMPO DE TEXTO
  //
  Widget campoTexto(rotulo, variavelControle){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),      
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: variavelControle,
        style: TextStyle(fontSize: 28),       
        decoration: InputDecoration(
          labelText: rotulo,
          labelStyle: TextStyle(color: Theme.of(context).primaryColor,fontSize: 18,),
        ),
        validator: (value){
          return (double.tryParse(value) == null) ? "Informe um Valor Numérico" : null;
        },
      ),
    );
  }

  //
  // METODO BOTÃO
  //
  Widget botao(rotulo){
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: FlatButton(
        child: Text('Calcular',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.bold,)),
        color: Theme.of(context).primaryColor.withOpacity(.2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: (){
          if (formKey.currentState.validate()){
            setState((){
              double peso = double.parse(txtPeso.text);
              double altura = double.parse(txtAltura.text);
              double imc = peso / pow(altura,2);
              caixaDialogo('IMC = ${imc.toStringAsFixed(2)}');
            });}
          },
      ),
    );
  }

  //
  // METODO LIMPAR
  //
  Widget limpar(rotulo){
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: FlatButton(
        child: Text('Limpar',style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.bold,)),
        color: Theme.of(context).primaryColor.withOpacity(.2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: (){
          setState((){
            txtPeso.text = "";
            txtAltura.text = "";
          });
        },
      ),
    );
  }

  //
  // METODO CAIXA DE DIÁLOGO
  //
  caixaDialogo(msg){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Resultado', style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 16, fontWeight: FontWeight.bold)),
          content: Text(msg, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),          
          actions: [
            FlatButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text('Fechar', style: TextStyle(fontSize: 16, color: Theme.of(context).primaryColor),)
            )
          ],
        );
      }
    );
  }
  
}