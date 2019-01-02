class Exame {
    String nome
    String descricaoExame
    Date DataCadastro = new Date()
	
	String toString() {
		"${this.nome}"
	}
}
