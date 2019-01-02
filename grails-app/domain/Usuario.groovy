class Usuario {

String nome
String login
String senha
String email
String foneCelular
String permissao

static constraints ={
    permissao(inList:['ADMIN','USU'])
}

String toString() {
		"${this.nome}"
	}


}
