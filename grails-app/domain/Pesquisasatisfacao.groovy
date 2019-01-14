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
		 tempoSalaEspera(inList:['Detestei - 1','Não Gostei - 2','Indiferente - 3','Gostei - 4','Adorei - 5'])
         tempoEsperaEsperaExamesRealizados(inList:['Detestei - 1','Não Gostei - 2','Indiferente - 3','Gostei - 4','Adorei - 5'])
         tempoEsperaExameResultado(inList:['Detestei - 1','Não Gostei - 2','Indiferente - 3','Gostei - 4','Adorei - 5'])
         facilidadedeMarcarConsultaAtendido(inList:['Detestei - 1','Não Gostei - 2','Indiferente - 3','Gostei - 4','Adorei - 5'])
         horaAtendimento(inList:['Detestei - 1','Não Gostei - 2','Indiferente - 3','Gostei - 4','Adorei - 5'])
         retornoImediatoChamada(inList:['Detestei - 1','Não Gostei - 2','Indiferente - 3','Gostei - 4','Adorei - 5'])
         explicaQuerSaber(inList:['Detestei - 1','Não Gostei - 2','Indiferente - 3','Gostei - 4','Adorei - 5'])
         simpaticaUtil(inList:['Detestei - 1','Não Gostei - 2','Indiferente - 3','Gostei - 4','Adorei - 5'])
         explicaQuerSaberOutros(inList:['Detestei - 1','Não Gostei - 2','Indiferente - 3','Gostei - 4','Adorei - 5'])
         simpaticaUtilOutros(inList:['Detestei - 1','Não Gostei - 2','Indiferente - 3','Gostei - 4','Adorei - 5'])
         facilidadeOrientar(inList:['Detestei - 1','Não Gostei - 2','Indiferente - 3','Gostei - 4','Adorei - 5'])
         confortoSeguranca(inList:['Detestei - 1','Não Gostei - 2','Indiferente - 3','Gostei - 4','Adorei - 5'])
         organizacaoLimpeza(inList:['Detestei - 1','Não Gostei - 2','Indiferente - 3','Gostei - 4','Adorei - 5'])
         voceRecomendaria(inList:['Sim','Não'])
	 }


}
