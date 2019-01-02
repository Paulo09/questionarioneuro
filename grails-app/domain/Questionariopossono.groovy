class Questionariopossono {


    String quantoTempodemorouDormir
    String quantasHorasSonoAchaDormiu
    String despertouDuranteExame
    String quantasVezes
    String finalExameComoAcordou
    String finalExameComoAcordouCampo
    String comoAcordouFinalExame
    String tomouMedicacaoDormirExame
    String tomouMedicacaoDormirExameCampo
    String comentario


    static constraints ={	
	    quantoTempodemorouDormir(inList:['0 a 30 minutos','30 minutos a 1 Hora','Mais de 1 Hora'])
        finalExameComoAcordou(inList:['Espontaneamnete','Foi cordado(a) pelo técnico(a)'])
        comoAcordouFinalExame(inList:['Relaxado(a)','Cansado(a)','Com sono'])
    }

}
