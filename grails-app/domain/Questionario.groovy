class Questionario {

String nome
String descricao

Medicoresponsavel medicoresponsavel
Medicorequisitante medicorequisitante
Exame exame
Usuario usuario 
Responsaveltecnica responsaveltecnica

static hasMany = [usuario:Usuario,exame:Exame]





}
