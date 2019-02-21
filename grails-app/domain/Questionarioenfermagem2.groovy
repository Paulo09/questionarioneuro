class Questionarioenfermagem2 {

    String tipoAssistenciaEnfermagem
    String horaColeta
    String sao2Coleta
    String posicaoColeta
    String roncoColeta
    String ipapColeta
    String epapColeta
    String fugaColeta
    String aoColeta
    String hipoColeta
    String eventosExame


    static belongsTo = Paciente
    Paciente paciente


    String anotacoesEnfermagem

    Interfaceutilizada interfaceutilizada


     static constraints ={
	    tipoAssistenciaEnfermagem(inList:['Basal','CPAP','BIPAP','Split Night','TLMS','TMV'])
        posicaoColeta(inList:['DD - Decúbito Dorsal','DLD - Decúbito Lateral Direito','DLE - Decúbito Lateral Esquerdo','DV - Decúbito Ventral'])
        roncoColeta(inList:['0 - Ausente','1 - Leve','2 - Moderado','3 - Intenso'])
     }


}
