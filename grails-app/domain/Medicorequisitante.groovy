class Medicorequisitante {
    String nome
    String crm
    Date dtCadastro = new Date()
    String observacao
	
	String toString() {
		"${this.nome}"
	}
}
