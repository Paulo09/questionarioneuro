class Questionariovideoeeg {

String paisParentes
String problemaGravidezParto
String qualproblemaGravidezParto
String pacienteDesenvolvimentoNormal

String anosAndou
String anosFalou

String desenvolvimentoNormal

String convulcaoInfancia
String crisesepileticasIdadeAno
String crisesepileticasIdadeMeses
String quantasConvulsoes
String descrevaCriseSinal

String qualMedicacaoTomouCrise
String nomeRemedioCrise
String dosagemMedicamentoCrise

String frequenciaCriseDia
String frequenciaCriseSemana
String frequenciaCriseMes
String frequenciaCriseAno

String qualMedicacaoTomouDoenca
String nomeRemedioDoenca
String dosagemMedicamentoDoenca



Paciente paciente
Convenio convenio
Medicoresponsavel medicoResponsavel
Medicorequisitante medicoRequisitante

static constraints ={	
	
	paisParentes(inList:['Sim','Não'])
	problemaGravidezParto(inList:['Sim','Não'])
	desenvolvimentoNormal(inList:['Sim','Não'])
	convulcaoInfancia(inList:['Sim','Não'])
	
}

}
