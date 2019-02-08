

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
        <title>Editar Dados Questionario Pré-Sono</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light red lighten-2">
			<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="/teste/questionariopresono/show/${questionariopresono.id}" target="_self">Voltar</a></li>
			<li class="tab  disabled"><a class="active">Listar</a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">
	<div class="container" style="margin-top:40px;">
    <body>
        <div class="card"><div class="card-image">
		</div>
        <div class="body">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${questionariopresono}">
            <div class="errors">
                <g:renderErrors bean="${questionariopresono}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${questionariopresono?.id}" />
                <div class="dialog">
                    
                    <div class="list">
                        <div class="card-content red lighten-2">
                        <h4 align="center" class="white-text">Editar Dados Questionario Pré-Sono</h4>
				    </div>

                    <table class="striped left grey lighten-2">
                        <tbody>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="jaFumou"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'jaFumou','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite jaFumou " id="jaFumou" name="jaFumou" size="50" value="${fieldValue(bean:questionariopresono,field:'jaFumou')}"/>
                                     <label for="descricao"><font size="3"><b>Ja Fumou</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fuma"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'fuma','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite fuma " id="fuma" name="fuma" size="50" value="${fieldValue(bean:questionariopresono,field:'fuma')}"/>
                                    <label for="descricao"><font size="3"><b>Fuma</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tratamentoApineiaSono"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'tratamentoApineiaSono','errors')}">
                                    <i class="fa fa-list"></i><g:select id="tratamentoApineiaSono" name="tratamentoApineiaSono" from="${questionariopresono.constraints.tratamentoApineiaSono.inList}" value="${questionariopresono.tratamentoApineiaSono}" noSelection="['':'- Tratamento Apinéia Sono: -']" ></g:select>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="voceTem"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'voceTem','errors')}">
                                    <g:select id="voceTem" name="voceTem" from="${questionariopresono.constraints.voceTem.inList}" value="${questionariopresono.voceTem}" noSelection="['':'- Você Tem qual doença -']" ></g:select>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantoTempodemoraDormir"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quantoTempodemoraDormir','errors')}">
                                    <i class="fa fa-list"></i><g:select id="quantoTempodemoraDormir" name="quantoTempodemoraDormir" from="${questionariopresono.constraints.quantoTempodemoraDormir.inList}" value="${questionariopresono.quantoTempodemoraDormir}" noSelection="['':'- Quanto Tempo Demora para Dormir -']" ></g:select>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="comoVocecordaCostume"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'comoVocecordaCostume','errors')}">
                                    <i class="fa fa-list"></i><g:select id="comoVocecordaCostume" name="comoVocecordaCostume" from="${questionariopresono.constraints.comoVocecordaCostume.inList}" value="${questionariopresono.comoVocecordaCostume}" noSelection="['':'- Como Vocecorda Costume -']" ></g:select>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sentemuitaSonolencia"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'sentemuitaSonolencia','errors')}">
                                    <i class="fa fa-list"></i><g:select id="sentemuitaSonolencia" name="sentemuitaSonolencia" from="${questionariopresono.constraints.sentemuitaSonolencia.inList}" value="${questionariopresono.sentemuitaSonolencia}" noSelection="['':'- Sente Muita Sonolência -']" ></g:select>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sentemuitaFadiga"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'sentemuitaFadiga','errors')}">
                                    <i class="fa fa-list"></i><g:select id="sentemuitaFadiga" name="sentemuitaFadiga" from="${questionariopresono.constraints.sentemuitaFadiga.inList}" value="${questionariopresono.sentemuitaFadiga}" noSelection="['':'- Sente Muita Fadiga -']" ></g:select>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="qualTipo"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'qualTipo','errors')}">
                                    <i class="fa fa-list"></i><g:select id="qualTipo" name="qualTipo" from="${questionariopresono.constraints.qualTipo.inList}" value="${questionariopresono.qualTipo}" noSelection="['':'- Qual Tipo -']"></g:select>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bebidaAlcoolica"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'bebidaAlcoolica','errors')}">
                                    <i class="fa fa-list"></i><g:select id="bebidaAlcoolica" name="bebidaAlcoolica" from="${questionariopresono.constraints.bebidaAlcoolica.inList}" value="${questionariopresono.bebidaAlcoolica}" noSelection="['':'- Bebida Alcoólica: -']"></g:select>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sintomasSonoFamilia"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'sintomasSonoFamilia','errors')}">
                                    <i class="fa fa-list"></i><g:select id="sintomasSonoFamilia" name="sintomasSonoFamilia" from="${questionariopresono.constraints.sintomasSonoFamilia.inList}" value="${questionariopresono.sintomasSonoFamilia}" noSelection="['':'- Sintomas Sono Família -']"></g:select>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="chanceCochilar"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'chanceCochilar','errors')}">
                                    <i class="fa fa-list"></i><g:select id="chanceCochilar" name="chanceCochilar" from="${questionariopresono.constraints.chanceCochilar.inList}" value="${questionariopresono.chanceCochilar}" noSelection="['':'- Chance Cochilar -']"></g:select>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="CPAP"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'CPAP','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite CPAP " id="CPAP" name="CPAP" size="50" value="${fieldValue(bean:questionariopresono,field:'CPAP')}"/>
                                     <label for="descricao"><font size="3"><b>CPAP</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="alturaPaciente"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'alturaPaciente','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite alturaPaciente " id="alturaPaciente" name="alturaPaciente" size="50" value="${fieldValue(bean:questionariopresono,field:'alturaPaciente')}"/>
                                    <label for="descricao"><font size="3"><b>Altura Paciente</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="arritimia"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'arritimia','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite arritimia " id="arritimia" name="arritimia" size="50" value="${fieldValue(bean:questionariopresono,field:'arritimia')}"/>
                                    <label for="descricao"><font size="3"><b>Arritimia</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="chanceCochilarLegenda"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'chanceCochilarLegenda','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite chanceCochilarLegenda " id="chanceCochilarLegenda" name="chanceCochilarLegenda" size="50" value="${fieldValue(bean:questionariopresono,field:'chanceCochilarLegenda')}"/>
                                    <label for="descricao"><font size="3"><b>Chance Cochilar Legenda</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="circCervical"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'circCervical','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite circCervical " id="circCervical" name="circCervical" size="50" value="${fieldValue(bean:questionariopresono,field:'circCervical')}"/>
                                    <label for="descricao"><font size="3"><b>Circunferência Cervical</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="convenio"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'convenio','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Convenio.list()}" name="convenio.id" value="${questionariopresono?.convenio?.id}" noSelection="['':'- Convênio: -']" ></g:select> <a href="${createLinkTo(dir:'/convenio/create')}">* Cadastrar Convenio</a>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="doencaCardiaca"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'doencaCardiaca','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite doencaCardiaca " id="doencaCardiaca" name="doencaCardiaca" size="50" value="${fieldValue(bean:questionariopresono,field:'doencaCardiaca')}"/>
                                    <label for="descricao"><font size="3"><b>Doença Cardiaca</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="doencaPulmonarCronica"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'doencaPulmonarCronica','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite doencaPulmonarCronica " id="doencaPulmonarCronica" name="doencaPulmonarCronica" size="50" value="${fieldValue(bean:questionariopresono,field:'doencaPulmonarCronica')}"/>
                                    <label for="descricao"><font size="3"><b>Doença Pulmonar Crônica:</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamentoDormir"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'dosagemMedicamentoDormir','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamentoDormir " id="dosagemMedicamentoDormir" name="dosagemMedicamentoDormir" size="50" value="${fieldValue(bean:questionariopresono,field:'dosagemMedicamentoDormir')}"/>
                                     <label for="descricao"><font size="3"><b>Dosagem Medicamento Dormir</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop" style="display:none">
                                <td valign="top" class="name">
                                    <label for="dtCadastro"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'dtCadastro','errors')}">
                                    <input name="dtCadastro" class="form-control" data-clear-btn-text="Limpar Dt Cadastro"  data-clear-btn="true" value="${String.format('%td/%<tm/%<tY',questionariopresono?.dtCadastro)}" ></input>
                                    <label for="descricao"><font size="3"><b>Data Cadastro</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dtExame"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'dtExame','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dtExame " id="dtExame" name="dtExame" size="50" value="${fieldValue(bean:questionariopresono,field:'dtExame')}"/>
                                    <label for="descricao"><font size="3"><b>Data Exame</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="exame"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'exame','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Exame.list()}" name="exame.id" value="${questionariopresono?.exame?.id}" noSelection="['':'- Tipo Exame -']" ></g:select> <a href="${createLinkTo(dir:'/exame/create')}">* Cadastrar Exame</a>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="horaAbitualAcordar"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'horaAbitualAcordar','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite horaAbitualAcordar " id="horaAbitualAcordar" name="horaAbitualAcordar" size="50" value="${fieldValue(bean:questionariopresono,field:'horaAbitualAcordar')}"/>
                                    <label for="descricao"><font size="3"><b>Hora Abitual Acordar</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="horaAbitualDormir"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'horaAbitualDormir','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite horaAbitualDormir " id="horaAbitualDormir" name="horaAbitualDormir" size="50" value="${fieldValue(bean:questionariopresono,field:'horaAbitualDormir')}"/>
                                    <label for="descricao"><font size="3"><b>Hora Abitual Dormir</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medicoRequisitante"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'medicoRequisitante','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicorequisitante.list()}" name="medicoRequisitante.id" value="${questionariopresono?.medicoRequisitante?.id}" noSelection="['':'- Médico Requisitante -']"></g:select> <a href="${createLinkTo(dir:'/medicoRequisitante/create')}">* Cadastrar Medicorequisitante</a>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medicoResponsavel"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'medicoResponsavel','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicoresponsavel.list()}" name="medicoResponsavel.id" value="${questionariopresono?.medicoResponsavel?.id}" noSelection="['':'- Médico Responsável -']"></g:select> <a href="${createLinkTo(dir:'/medicoResponsavel/create')}">* Cadastrar Medicoresponsavel</a>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeMedicamentoDormir"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'nomeMedicamentoDormir','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicamentoDormir " id="nomeMedicamentoDormir" name="nomeMedicamentoDormir" size="50" value="${fieldValue(bean:questionariopresono,field:'nomeMedicamentoDormir')}"/>
                                     <label for="descricao"><font size="3"><b>Nome Medicamento Dormir</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="outroMedicamentoUsa"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'outroMedicamentoUsa','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite outroMedicamentoUsa " id="outroMedicamentoUsa" name="outroMedicamentoUsa" size="50" value="${fieldValue(bean:questionariopresono,field:'outroMedicamentoUsa')}"/>
                                    <label for="descricao"><font size="3"><b>Outro Medicamento Usa</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="outrosMedicamentosUsa"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'outrosMedicamentosUsa','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite outrosMedicamentosUsa " id="outrosMedicamentosUsa" name="outrosMedicamentosUsa" size="50" value="${fieldValue(bean:questionariopresono,field:'outrosMedicamentosUsa')}"/>
                                    <label for="descricao"><font size="3"><b>Outros Medicamentos Usa</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paciente"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'paciente','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Paciente.list()}" name="paciente.id" value="${questionariopresono?.paciente?.id}" noSelection="['':'- Paciente -']"></g:select> <a href="${createLinkTo(dir:'/paciente/create')}">* Cadastrar Paciente</a>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pesoPaciente"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'pesoPaciente','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite pesoPaciente " id="pesoPaciente" name="pesoPaciente" size="50" value="${fieldValue(bean:questionariopresono,field:'pesoPaciente')}"/>
                                    <label for="descricao"><font size="3"><b>Peso Paciente</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantHoraSono"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quantHoraSono','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite quantHoraSono " id="quantHoraSono" name="quantHoraSono" size="50" value="${fieldValue(bean:questionariopresono,field:'quantHoraSono')}"/>
                                     <label for="descricao"><font size="3"><b>Quant Hora Sono</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantXicaraCopoRefrigeranteDia"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quantXicaraCopoRefrigeranteDia','errors')}">
                                    <i class="fa fa-sort-numeric-asc"></i><input placeholder="Digite quantXicaraCopoRefrigeranteDia " class="form-control"  size="50" type="number" id="quantXicaraCopoRefrigeranteDia" name="quantXicaraCopoRefrigeranteDia" value="${fieldValue(bean:questionariopresono,field:'quantXicaraCopoRefrigeranteDia')}" />
                                    <label for="descricao"><font size="3"><b>Quantidade Xícara ou Copo Refrigerante Dia</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantosPorDia"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quantosPorDia','errors')}">
                                    <i class="fa fa-sort-numeric-asc"></i><input placeholder="Digite quantosPorDia " class="form-control"  size="50" type="number" id="quantosPorDia" name="quantosPorDia" value="${fieldValue(bean:questionariopresono,field:'quantosPorDia')}" />
                                    <label for="descricao"><font size="3"><b>Quantos Por Dia</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quarto"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quarto','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Quarto.list()}" name="quarto.id" value="${questionariopresono?.quarto?.id}" noSelection="['':'- Quarto -']" ></g:select> <a href="${createLinkTo(dir:'/quarto/create')}">* Cadastrar Quarto</a>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="responsaveltecnica"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'responsaveltecnica','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Responsaveltecnica.list()}" name="responsaveltecnica.id" value="${questionariopresono?.responsaveltecnica?.id}" noSelection="['':'- Responsável Técnica -']" ></g:select> <a href="${createLinkTo(dir:'/responsaveltecnica/create')}">* Cadastrar Responsaveltecnica</a>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="saoInicial"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'saoInicial','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite saoInicial " id="saoInicial" name="saoInicial" size="50" value="${fieldValue(bean:questionariopresono,field:'saoInicial')}"/>
                                    <label for="descricao"><font size="3"><b>São Inicial</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sintomasSonoFamiliaCampo"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'sintomasSonoFamiliaCampo','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite sintomasSonoFamiliaCampo " id="sintomasSonoFamiliaCampo" name="sintomasSonoFamiliaCampo" size="50" value="${fieldValue(bean:questionariopresono,field:'sintomasSonoFamiliaCampo')}"/>
                                    <label for="descricao"><font size="3"><b>Sintomas Sono Família Campo</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tempoFuma"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'tempoFuma','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite tempoFuma " id="tempoFuma" name="tempoFuma" size="50" value="${fieldValue(bean:questionariopresono,field:'tempoFuma')}"/>
                                     <label for="descricao"><font size="3"><b>Quanto Tempo Fuma</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tempoParou"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'tempoParou','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite tempoParou " id="tempoParou" name="tempoParou" size="50" value="${fieldValue(bean:questionariopresono,field:'tempoParou')}"/>
                                    <label for="descricao"><font size="3"><b>Quanto Tempo Parou</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="usaMedicamentoDormir"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'usaMedicamentoDormir','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite usaMedicamentoDormir " id="usaMedicamentoDormir" name="usaMedicamentoDormir" size="50" value="${fieldValue(bean:questionariopresono,field:'usaMedicamentoDormir')}"/>
                                    <label for="descricao"><font size="3"><b>Usa Medicamento para Dormir</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="voceRonca"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'voceRonca','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite voceRonca " id="voceRonca" name="voceRonca" size="50" value="${fieldValue(bean:questionariopresono,field:'voceRonca')}"/>
                                    <label for="descricao"><font size="3"><b>Você Ronca</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="voceRoncaFrequencia"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'voceRoncaFrequencia','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite voceRoncaFrequencia " id="voceRoncaFrequencia" name="voceRoncaFrequencia" size="50" value="${fieldValue(bean:questionariopresono,field:'voceRoncaFrequencia')}"/>
                                    <label for="descricao"><font size="3"><b>Você Ronca com que Frequência</b></font></label>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>
                <div class="buttons" align="center">
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2" style="padding:10px;margin:10px;size:30px;width:110px;" action="Update" value="Salvar"/></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2" style="padding:10px;margin:10px;size:30px;width:110px;" action="delete" value="Apagar"/></span>
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
