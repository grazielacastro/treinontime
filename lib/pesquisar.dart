import 'package:flutter/material.dart';

class TelaPesquisar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [            
              Text('Pesquisar!', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              Text('Encontre Treinadores Cadastrados.', style: TextStyle(fontSize: 18, color: Colors.black, fontStyle: FontStyle.italic),),
              SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20, width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Nome do(a) Treinador(a)',
                          hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),
                      ),),
                  ),
                  IconButton(icon: Icon(Icons.person_search, size: 40, color: Theme.of(context).primaryColor),
                    onPressed: (){debugPrint("botão acionado.");}),
                ],              
              ),
              SizedBox(height: 10),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20, width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Modalidade',
                          hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),
                      ),),
                  ),
                  SizedBox(height: 10),
                   IconButton(icon: Icon(Icons.fitness_center, size: 40, color: Theme.of(context).primaryColor),
                    onPressed: (){debugPrint("botão acionado.");}),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20, width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Localização',
                          hintStyle: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Theme.of(context).primaryColor),
                      ),),
                  ),
                  SizedBox(height: 10),
                  IconButton(icon: Icon(Icons.location_on, size: 40, color: Theme.of(context).primaryColor),
                    onPressed: (){debugPrint("botão acionado.");}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}