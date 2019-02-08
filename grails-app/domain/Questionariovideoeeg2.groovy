class Questionariovideoeeg2 {

Date dtExame = new Date()
String paisParentes
String problemaGravidezParto
String qualproblemaGravidezParto

String anosAndou
String anosFalou
String frequentaescola

String convulcaocomFebreInfancia
String idadeCriseEpiletpticaAnos
String idadeCriseEpiletpticaMeses
String frequenciaAtualCrise
String descricaoSintomasCriseTestemunha

String nomeMedicacao1
String nomeMedicacao2
String nomeMedicacao3
String nomeMedicacao4
String nomeMedicacao5
String nomeMedicacao6
String dosagemMedicamento1
String dosagemMedicamento2
String dosagemMedicamento3
String dosagemMedicamento4
String dosagemMedicamento5
String dosagemMedicamento6

String diagnosticoEnfermagem
String intervencaoEnfermagem
String descricaoEventos

Responsaveltecnica responsaveltecnica
Paciente paciente
Convenio convenio
Medicoresponsavel medicoResponsavel
Medicorequisitante medicoRequisitante

//Projeto projeto
static belogsTo = Convenio


static constraints ={

	paisParentes(inList:['Sim','Não'])
    problemaGravidezParto(inList:['Sim','Não'])
    frequentaescola(inList:['Sim','Não'])
    convulcaocomFebreInfancia(inList:['Sim','Não'])
}


}
