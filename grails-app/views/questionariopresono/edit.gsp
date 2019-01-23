

<html>
    <head>
        <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css"/>
	     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		 
		 <!--Materilize embarcado-->
	      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	      <!--Import materialize.css-->
		  <link type="text/css" rel="stylesheet" href="${createLinkTo(dir:'css',file:'materialize.min.css')}" media="screen,projection"/>
	      <!--Let browser know website is optimized for mobile-->
	      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
   	      <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'materialize.css')}"/>
		  <!--Materilize embarcado-->
        <title>Editar Dados Questionariopresono</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/barraMenu',file:'barraMenu.jpg')});">  
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="#test1">Sair</a></li>
			<li class="tab"><a class="active" href="#test2">Menu</a></li>
			<li class="tab disabled"><a href="#test3">Buscar</a></li>
		  </ul>
		</div>
	</nav>
	<body class="teal lighten-2">   
	<div class="container" style="margin-top:40px;">
    <body style="background-image:url(${createLinkTo(dir:'images/view/edit/backgroundPagina',file:'backgroundPagina.jpg')});background-repeat:no-repeat;background-size:cover;">
        <div class="card">
		  <div class="card-image">
		  <img src="${createLinkTo(dir:'images/view/edit/backgroundCard',file:'backgroundCard.jpg')}">
		  <span class="card-title"><b>E</b>ditar Dados <b>Questionariopresono</b></span>
		</div>
        <div class="body">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${questionariopresono}">
            <div class="errors">
                <g:renderErrors bean="${questionariopresono}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${questionariopresono?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tratamentoApineiaSono">Tratamento Apineia Sono:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'tratamentoApineiaSono','errors')}">
                                    <i class="fa fa-list"></i><g:select id="tratamentoApineiaSono" name="tratamentoApineiaSono" from="${questionariopresono.constraints.tratamentoApineiaSono.inList}" value="${questionariopresono.tratamentoApineiaSono}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="voceTem">Voce Tem:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'voceTem','errors')}">
                                    <i class="fa fa-list"></i><g:select id="voceTem" name="voceTem" from="${questionariopresono.constraints.voceTem.inList}" value="${questionariopresono.voceTem}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantoTempodemoraDormir">Quanto Tempodemora Dormir:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quantoTempodemoraDormir','errors')}">
                                    <i class="fa fa-list"></i><g:select id="quantoTempodemoraDormir" name="quantoTempodemoraDormir" from="${questionariopresono.constraints.quantoTempodemoraDormir.inList}" value="${questionariopresono.quantoTempodemoraDormir}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="comoVocecordaCostume">Como Vocecorda Costume:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'comoVocecordaCostume','errors')}">
                                    <i class="fa fa-list"></i><g:select id="comoVocecordaCostume" name="comoVocecordaCostume" from="${questionariopresono.constraints.comoVocecordaCostume.inList}" value="${questionariopresono.comoVocecordaCostume}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sentemuitaSonolencia">Sentemuita Sonolencia:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'sentemuitaSonolencia','errors')}">
                                    <i class="fa fa-list"></i><g:select id="sentemuitaSonolencia" name="sentemuitaSonolencia" from="${questionariopresono.constraints.sentemuitaSonolencia.inList}" value="${questionariopresono.sentemuitaSonolencia}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sentemuitaFadiga">Sentemuita Fadiga:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'sentemuitaFadiga','errors')}">
                                    <i class="fa fa-list"></i><g:select id="sentemuitaFadiga" name="sentemuitaFadiga" from="${questionariopresono.constraints.sentemuitaFadiga.inList}" value="${questionariopresono.sentemuitaFadiga}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="qualTipo">Qual Tipo:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'qualTipo','errors')}">
                                    <i class="fa fa-list"></i><g:select id="qualTipo" name="qualTipo" from="${questionariopresono.constraints.qualTipo.inList}" value="${questionariopresono.qualTipo}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bebidaAlcoolica">Bebida Alcoolica:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'bebidaAlcoolica','errors')}">
                                    <i class="fa fa-list"></i><g:select id="bebidaAlcoolica" name="bebidaAlcoolica" from="${questionariopresono.constraints.bebidaAlcoolica.inList}" value="${questionariopresono.bebidaAlcoolica}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sintomasSonoFamilia">Sintomas Sono Familia:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'sintomasSonoFamilia','errors')}">
                                    <i class="fa fa-list"></i><g:select id="sintomasSonoFamilia" name="sintomasSonoFamilia" from="${questionariopresono.constraints.sintomasSonoFamilia.inList}" value="${questionariopresono.sintomasSonoFamilia}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="CPAP">CPAP:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'CPAP','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite CPAP " id="CPAP" name="CPAP" size="50" value="${fieldValue(bean:questionariopresono,field:'CPAP')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="alturaPaciente">Altura Paciente:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'alturaPaciente','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite alturaPaciente " id="alturaPaciente" name="alturaPaciente" size="50" value="${fieldValue(bean:questionariopresono,field:'alturaPaciente')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="arritimia">Arritimia:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'arritimia','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite arritimia " id="arritimia" name="arritimia" size="50" value="${fieldValue(bean:questionariopresono,field:'arritimia')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="chanceCochilar">Chance Cochilar:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'chanceCochilar','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite chanceCochilar " id="chanceCochilar" name="chanceCochilar" size="50" value="${fieldValue(bean:questionariopresono,field:'chanceCochilar')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="chanceCochilarLegenda">Chance Cochilar Legenda:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'chanceCochilarLegenda','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite chanceCochilarLegenda " id="chanceCochilarLegenda" name="chanceCochilarLegenda" size="50" value="${fieldValue(bean:questionariopresono,field:'chanceCochilarLegenda')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="circCervical">Circ Cervical:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'circCervical','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite circCervical " id="circCervical" name="circCervical" size="50" value="${fieldValue(bean:questionariopresono,field:'circCervical')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="convenio">Convenio:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'convenio','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Convenio.list()}" name="convenio.id" value="${questionariopresono?.convenio?.id}" ></g:select> <a href="${createLinkTo(dir:'/convenio/create')}">* Cadastrar Convenio</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="doencaCardiaca">Doenca Cardiaca:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'doencaCardiaca','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite doencaCardiaca " id="doencaCardiaca" name="doencaCardiaca" size="50" value="${fieldValue(bean:questionariopresono,field:'doencaCardiaca')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="doencaPulmonarCronica">Doenca Pulmonar Cronica:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'doencaPulmonarCronica','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite doencaPulmonarCronica " id="doencaPulmonarCronica" name="doencaPulmonarCronica" size="50" value="${fieldValue(bean:questionariopresono,field:'doencaPulmonarCronica')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamentoDormir">Dosagem Medicamento Dormir:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'dosagemMedicamentoDormir','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamentoDormir " id="dosagemMedicamentoDormir" name="dosagemMedicamentoDormir" size="50" value="${fieldValue(bean:questionariopresono,field:'dosagemMedicamentoDormir')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dtCadastro">Dt Cadastro:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'dtCadastro','errors')}">
                                    <input name="dtCadastro" class="form-control" data-clear-btn-text="Limpar Dt Cadastro"  data-clear-btn="true" value="${String.format('%td/%<tm/%<tY',questionariopresono?.dtCadastro)}" ></input>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dtExame">Dt Exame:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'dtExame','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dtExame " id="dtExame" name="dtExame" size="50" value="${fieldValue(bean:questionariopresono,field:'dtExame')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="exame">Exame:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'exame','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Exame.list()}" name="exame.id" value="${questionariopresono?.exame?.id}" ></g:select> <a href="${createLinkTo(dir:'/exame/create')}">* Cadastrar Exame</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fuma">Fuma:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'fuma','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite fuma " id="fuma" name="fuma" size="50" value="${fieldValue(bean:questionariopresono,field:'fuma')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="horaAbitualAcordar">Hora Abitual Acordar:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'horaAbitualAcordar','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite horaAbitualAcordar " id="horaAbitualAcordar" name="horaAbitualAcordar" size="50" value="${fieldValue(bean:questionariopresono,field:'horaAbitualAcordar')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="horaAbitualDormir">Hora Abitual Dormir:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'horaAbitualDormir','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite horaAbitualDormir " id="horaAbitualDormir" name="horaAbitualDormir" size="50" value="${fieldValue(bean:questionariopresono,field:'horaAbitualDormir')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="jaFumou">Ja Fumou:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'jaFumou','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite jaFumou " id="jaFumou" name="jaFumou" size="50" value="${fieldValue(bean:questionariopresono,field:'jaFumou')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medicoRequisitante">Medico Requisitante:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'medicoRequisitante','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicorequisitante.list()}" name="medicoRequisitante.id" value="${questionariopresono?.medicoRequisitante?.id}" ></g:select> <a href="${createLinkTo(dir:'/medicoRequisitante/create')}">* Cadastrar Medicorequisitante</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medicoResponsavel">Medico Responsavel:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'medicoResponsavel','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicoresponsavel.list()}" name="medicoResponsavel.id" value="${questionariopresono?.medicoResponsavel?.id}" ></g:select> <a href="${createLinkTo(dir:'/medicoResponsavel/create')}">* Cadastrar Medicoresponsavel</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeMedicamentoDormir">Nome Medicamento Dormir:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'nomeMedicamentoDormir','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicamentoDormir " id="nomeMedicamentoDormir" name="nomeMedicamentoDormir" size="50" value="${fieldValue(bean:questionariopresono,field:'nomeMedicamentoDormir')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="outroMedicamentoUsa">Outro Medicamento Usa:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'outroMedicamentoUsa','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite outroMedicamentoUsa " id="outroMedicamentoUsa" name="outroMedicamentoUsa" size="50" value="${fieldValue(bean:questionariopresono,field:'outroMedicamentoUsa')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="outrosMedicamentosUsa">Outros Medicamentos Usa:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'outrosMedicamentosUsa','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite outrosMedicamentosUsa " id="outrosMedicamentosUsa" name="outrosMedicamentosUsa" size="50" value="${fieldValue(bean:questionariopresono,field:'outrosMedicamentosUsa')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paciente">Paciente:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'paciente','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Paciente.list()}" name="paciente.id" value="${questionariopresono?.paciente?.id}" ></g:select> <a href="${createLinkTo(dir:'/paciente/create')}">* Cadastrar Paciente</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pesoPaciente">Peso Paciente:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'pesoPaciente','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite pesoPaciente " id="pesoPaciente" name="pesoPaciente" size="50" value="${fieldValue(bean:questionariopresono,field:'pesoPaciente')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantHoraSono">Quant Hora Sono:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quantHoraSono','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite quantHoraSono " id="quantHoraSono" name="quantHoraSono" size="50" value="${fieldValue(bean:questionariopresono,field:'quantHoraSono')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantXicaraCopoRefrigeranteDia">Quant Xicara Copo Refrigerante Dia:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quantXicaraCopoRefrigeranteDia','errors')}">
                                    <i class="fa fa-sort-numeric-asc"></i><input placeholder="Digite quantXicaraCopoRefrigeranteDia " class="form-control"  size="50" type="number" id="quantXicaraCopoRefrigeranteDia" name="quantXicaraCopoRefrigeranteDia" value="${fieldValue(bean:questionariopresono,field:'quantXicaraCopoRefrigeranteDia')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantosPorDia">Quantos Por Dia:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quantosPorDia','errors')}">
                                    <i class="fa fa-sort-numeric-asc"></i><input placeholder="Digite quantosPorDia " class="form-control"  size="50" type="number" id="quantosPorDia" name="quantosPorDia" value="${fieldValue(bean:questionariopresono,field:'quantosPorDia')}" />
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quarto">Quarto:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quarto','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Quarto.list()}" name="quarto.id" value="${questionariopresono?.quarto?.id}" ></g:select> <a href="${createLinkTo(dir:'/quarto/create')}">* Cadastrar Quarto</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="responsaveltecnica">Responsaveltecnica:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'responsaveltecnica','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Responsaveltecnica.list()}" name="responsaveltecnica.id" value="${questionariopresono?.responsaveltecnica?.id}" ></g:select> <a href="${createLinkTo(dir:'/responsaveltecnica/create')}">* Cadastrar Responsaveltecnica</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="saoInicial">Sao Inicial:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'saoInicial','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite saoInicial " id="saoInicial" name="saoInicial" size="50" value="${fieldValue(bean:questionariopresono,field:'saoInicial')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sintomasSonoFamiliaCampo">Sintomas Sono Familia Campo:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'sintomasSonoFamiliaCampo','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite sintomasSonoFamiliaCampo " id="sintomasSonoFamiliaCampo" name="sintomasSonoFamiliaCampo" size="50" value="${fieldValue(bean:questionariopresono,field:'sintomasSonoFamiliaCampo')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tempoFuma">Tempo Fuma:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'tempoFuma','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite tempoFuma " id="tempoFuma" name="tempoFuma" size="50" value="${fieldValue(bean:questionariopresono,field:'tempoFuma')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tempoParou">Tempo Parou:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'tempoParou','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite tempoParou " id="tempoParou" name="tempoParou" size="50" value="${fieldValue(bean:questionariopresono,field:'tempoParou')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="usaMedicamentoDormir">Usa Medicamento Dormir:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'usaMedicamentoDormir','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite usaMedicamentoDormir " id="usaMedicamentoDormir" name="usaMedicamentoDormir" size="50" value="${fieldValue(bean:questionariopresono,field:'usaMedicamentoDormir')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="voceRonca">Voce Ronca:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'voceRonca','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite voceRonca " id="voceRonca" name="voceRonca" size="50" value="${fieldValue(bean:questionariopresono,field:'voceRonca')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="voceRoncaFrequencia">Voce Ronca Frequencia:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'voceRoncaFrequencia','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite voceRoncaFrequencia " id="voceRoncaFrequencia" name="voceRoncaFrequencia" size="50" value="${fieldValue(bean:questionariopresono,field:'voceRoncaFrequencia')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons" align="center">
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="Update" value="Salvar"  /></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="delete" value="Apagar"  /></span>
                </div>
            </g:form>
        </div>
		   <!--Import jQuery before materialize.js-->
	       <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	       <script type="text/javascript" src="${createLinkTo(dir:'js',file:'materialize.js')}"></script>
		   <script>
			  $('.datepicker').pickadate({format: 'dd/mm/yy',selectMonths: true,selectYears: 15,today: 'Hoje',clear: 'Limpar',close:'Ok',closeOnSelect: false});
			  $(document).ready(function() {$('select').material_select();});
		   </script>
    </body>
</html>
