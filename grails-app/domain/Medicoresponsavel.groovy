class Medicoresponsavel {
String nome
String crm
Date dtCadastro= new Date()
String observacao

String toString() {
		"${this.nome}"
	}

	static constraints ={
		 nome(blank:false) 
		 crm(blank: false, unique: true)
}


	
}
