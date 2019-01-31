class Questionariopresono {

String saoInicial
String circCervical
String CPAP
String pesoPaciente
String alturaPaciente


String horaAbitualDormir
String horaAbitualAcordar
String quantHoraSono
String tratamentoApineiaSono


//--- Voce usa medicamento para Dormir ---//
String usaMedicamentoDormir
String nomeMedicamentoDormir
String dosagemMedicamentoDormir
///////////////////////////////////////////

String voceTem
String outrosMedicamentosUsa

String quantoTempodemoraDormir


String arritimia
String doencaPulmonarCronica
String doencaCardiaca
String outroMedicamentoUsa

String comoVocecordaCostume

String sentemuitaSonolencia
String sentemuitaFadiga


String voceRonca
String voceRoncaFrequencia

Integer quantXicaraCopoRefrigeranteDia

String fuma
String jaFumou
String qualTipo
String tempoFuma
String tempoParou
Integer quantosPorDia


String bebidaAlcoolica

String sintomasSonoFamilia
String sintomasSonoFamiliaCampo



String chanceCochilar
String chanceCochilarLegenda
String dtExame

Date dtCadastro = new Date()

Paciente paciente
Medicorequisitante medicoRequisitante
Responsaveltecnica responsaveltecnica
Medicoresponsavel medicoResponsavel
Convenio convenio
Quarto quarto
Exame exame

static constraints ={
    jaFumou(blank:true,nullable:true)
    fuma(blank:true,nullable:true)
	tratamentoApineiaSono(inList:['Não','CPAP','Dispositivo Intraoral'])
    voceTem(inList:['Arritmia','Doença Pulmonar Crônica','Doença Cardiaca'])
    quantoTempodemoraDormir(inList:['0 a 30 minutos','30 minutos a 1 Hora','Mais de 1 Hora'])
    comoVocecordaCostume(inList:['Espontaneamente','Alguém chama','Despertador Toca','Sou acordado(a) por outras causas'])
    sentemuitaSonolencia(inList:['Não','Sim'])
    sentemuitaFadiga(inList:['Não','Sim'])
    qualTipo(inList:['Cigarro','Cachimbo','Charuto'])
    bebidaAlcoolica(inList:['Não','Sim'])
    sintomasSonoFamilia(inList:['Nenhúm','Insônia','Ronco','Apnéia'])
    chanceCochilar(inList:['1. Sentado e Lendo',' 2. Vendo Televisão','3. Sentado em lugar público sem atividades como sala de espera, cinema, teatro ou Igreja','4. Como passageiro de carro, trem ou metrô andando por 1Hora sem parar','5. Deitado para descansar à tarde','6. Sentado e Conversando com Alguém','7. Sentado após uma refeição sem álcool','8. No carro parado por alguns minutos durante o trânsito'])
}






}
