class Agenda{
  
  String id;
  String agenda;

  Agenda(this.id,this.agenda);

  //Converter um Documento em um Objeto
  Agenda.fromMap(Map<String,dynamic>map,String id){
    this.id = id ?? '';
    this.agenda = map['agenda'];
  }
}