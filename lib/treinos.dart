import 'package:flutter/material.dart';

class TelaTreinos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(40),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [            
            Text('Treinos!', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
            Text('Meus Treinos Agendados.', style: TextStyle(fontSize: 18, color: Colors.black, fontStyle: FontStyle.italic),),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}