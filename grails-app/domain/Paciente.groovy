class Paciente {

String nome
String cpf
String Rg
Date dtCadastro= new Date()
String nivelEscolaridade
String sexo
String dataNascimento
String observacao

  static hasMany = [questionarioenfermagem:Questionarioenfermagem,questionariopresono:Questionariopresono,questionariovideoeeg2:Questionariovideoeeg2,questionariopossono:Questionariopossono]


	String toString() {
		"${this.nome}"
	}

	static constraints ={
		 sexo(inList:['Masculino','Feminino'])
		 nivelEscolaridade(inList:['Alfabetização','Fundamental','Médio','Técnico','Superior','Pós-Graduação','Mestrado','Doutorado'])
	 }

}
