class Pesquisasatisfacao {

    String tempoSalaEspera
    String tempoEsperaEsperaExamesRealizados
    String tempoEsperaExameResultado

    String facilidadedeMarcarConsultaAtendido
    String horaAtendimento
    String retornoImediatoChamada

    String explicaQuerSaber
    String simpaticaUtil

    String explicaQuerSaberOutros
    String simpaticaUtilOutros

    String facilidadeOrientar
    String confortoSeguranca
    String organizacaoLimpeza

    String voceRecomendaria
    String observacao

    static constraints ={
         tempoSalaEspera(blank:true,nullable:true)
         tempoEsperaEsperaExamesRealizados(blank:true,nullable:true)
         tempoEsperaExameResultado(blank:true,nullable:true)
         facilidadedeMarcarConsultaAtendido(blank:true,nullable:true)
         horaAtendimento(blank:true,nullable:true)
         retornoImediatoChamada(blank:true,nullable:true)
         explicaQuerSaber(blank:true,nullable:true)
         simpaticaUtil(blank:true,nullable:true)
         explicaQuerSaberOutros(blank:true,nullable:true)
         simpaticaUtilOutros(blank:true,nullable:true)
         facilidadeOrientar(blank:true,nullable:true)
         confortoSeguranca(blank:true,nullable:true)
         organizacaoLimpeza(blank:true,nullable:true)
         voceRecomendaria(inList:['Sim','Não'])
	 }


}
