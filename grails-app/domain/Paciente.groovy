class Paciente {

String nome
String cpf
String Rg
Date dtCadastro= new Date()
String nivelEscolaridade
String sexo
String dataNascimento
String observacao

	String toString() {
		"${this.nome}"
	}
	
	static constraints ={	
		 sexo(inList:['Masculino','Feminino'])
		 nivelEscolaridade(inList:['Alfabetização','Fundamental','Médio','Técnico','Superior','Pós-Graduação','Mestrado','Doutorado'])
	 }

}
