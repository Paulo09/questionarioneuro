class Teste {

String nome
String cpf
String Rg
String EstadoCivil
Date dtCadastro= new Date()
String foneCelular
String foneFixo
String email
String tipoLogradouro
String nivelEscolaridade
String sexo


	String toString() {
		"${this.nome}"
	}
	
	static constraints ={	
		 sexo(inList:['Masculino','Feminino'])
		 nivelEscolaridade(inList:['Alfabetiza��o','Fundamental','M�dio','T�cnico','Superior','P�s-Gradua��o','Mestrado','Doutorado'])
	 }

}
