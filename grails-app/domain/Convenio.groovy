class Convenio {
String nome
String descricao
Date cadastro = new Date()

static hasMany = [questionariovideoeeg2: Questionariovideoeeg2]

String toString() {
		"${this.nome}"
	}
	
}
