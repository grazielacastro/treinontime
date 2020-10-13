import 'package:flutter/material.dart';

class TelaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,          
          children: [            
            Text('Bora Treinar?', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
            Text('Encontre sua modalidade favorita e Agende seus treinos. É rápido e prático.', style: TextStyle(fontSize: 18, color: Colors.black, fontStyle: FontStyle.italic),),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}