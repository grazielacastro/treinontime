class Agenda{
  
  String id;
  String agenda;
  String horario;

  Agenda(this.id,this.agenda,this.horario);

  //Converter um Documento em um Objeto
  Agenda.fromMap(Map<String,dynamic>map,String id){
    this.id = id ?? '';
    this.agenda = map['agenda'];
    this.horario = map['horario'];
  }
}