

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

        <title>Cadastrar Questionariopresono</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="list" target="_self">Voltar</a></li>
			<li class="tab"><a class="active">Novo</a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">
	<div class="container" style="margin-top:40px;">
    <body>
        <div class="card">
		  <div class="card-image"></div>
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${questionariopresono}">
            <div class="errors">
                <g:renderErrors bean="${questionariopresono}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table class="striped left grey lighten-2">
                        <tbody>

                            <div class="card-content red lighten-2">
                                <h4 align="center" class="white-text">Questionário Video - Pré-Sono</h4>
                            </div>


                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'jaFumou','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite jaFumou " id="jaFumou" name="jaFumou" size="50" value="${fieldValue(bean:questionariopresono,field:'jaFumou')}"/>
									<label for="jaFumou"><font size="3"><b>Ja Fumou</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'fuma','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite fuma " id="fuma" name="fuma" size="50" value="${fieldValue(bean:questionariopresono,field:'fuma')}"/>
									<label for="fuma"><font size="3"><b>Fuma</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'tratamentoApineiaSono','errors')}">
                                    <i class="fa fa-list"></i><g:select id="tratamentoApineiaSono" name="tratamentoApineiaSono" from="${questionariopresono.constraints.tratamentoApineiaSono.inList}" value="${questionariopresono.tratamentoApineiaSono}" noSelection="['':'- Tratamento Apineia Sono -']"></g:select>
									<label for="tratamentoApineiaSono"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'voceTem','errors')}">
                                    <i class="fa fa-list"></i><g:select id="voceTem" name="voceTem" from="${questionariopresono.constraints.voceTem.inList}" value="${questionariopresono.voceTem}"  noSelection="['':'- Você Tem? -']" ></g:select>
									<label for="voceTem"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quantoTempodemoraDormir','errors')}">
                                    <i class="fa fa-list"></i><g:select id="quantoTempodemoraDormir" name="quantoTempodemoraDormir" from="${questionariopresono.constraints.quantoTempodemoraDormir.inList}" value="${questionariopresono.quantoTempodemoraDormir}" noSelection="['':'- Quanto Tempo Demora para Dormir? -']" ></g:select>
									<label for="quantoTempodemoraDormir"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'comoVocecordaCostume','errors')}">
                                    <i class="fa fa-list"></i><g:select id="comoVocecordaCostume" name="comoVocecordaCostume" from="${questionariopresono.constraints.comoVocecordaCostume.inList}" value="${questionariopresono.comoVocecordaCostume}" noSelection="['':'- Como Voce Acorda de Costume? -']"></g:select>
									<label for="comoVocecordaCostume"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'sentemuitaSonolencia','errors')}">
                                    <i class="fa fa-list"></i><g:select id="sentemuitaSonolencia" name="sentemuitaSonolencia" from="${questionariopresono.constraints.sentemuitaSonolencia.inList}" value="${questionariopresono.sentemuitaSonolencia}" noSelection="['':'- Sente muita Sonolência? -']" ></g:select>
									<label for="sentemuitaSonolencia"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'sentemuitaFadiga','errors')}">
                                    <i class="fa fa-list"></i><g:select id="sentemuitaFadiga" name="sentemuitaFadiga" from="${questionariopresono.constraints.sentemuitaFadiga.inList}" value="${questionariopresono.sentemuitaFadiga}" noSelection="['':'- Sente muita Fadiga? -']" ></g:select>
									<label for="sentemuitaFadiga"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'qualTipo','errors')}">
                                    <i class="fa fa-list"></i><g:select id="qualTipo" name="qualTipo" from="${questionariopresono.constraints.qualTipo.inList}" value="${questionariopresono.qualTipo}" noSelection="['':'- Qual Tipo? -']" ></g:select>
									<label for="qualTipo"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'bebidaAlcoolica','errors')}">
                                    <i class="fa fa-list"></i><g:select id="bebidaAlcoolica" name="bebidaAlcoolica" from="${questionariopresono.constraints.bebidaAlcoolica.inList}" value="${questionariopresono.bebidaAlcoolica}" noSelection="['':'- Bebida Alcoólica? -']" ></g:select>
									<label for="bebidaAlcoolica"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'sintomasSonoFamilia','errors')}">
                                    <i class="fa fa-list"></i><g:select id="sintomasSonoFamilia" name="sintomasSonoFamilia" from="${questionariopresono.constraints.sintomasSonoFamilia.inList}" value="${questionariopresono.sintomasSonoFamilia}" noSelection="['':'- Sintomas Sono Família? -']" ></g:select>
									<label for="sintomasSonoFamilia"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'chanceCochilar','errors')}">
                                    <i class="fa fa-list"></i><g:select id="chanceCochilar" name="chanceCochilar" from="${questionariopresono.constraints.chanceCochilar.inList}" value="${questionariopresono.chanceCochilar}" noSelection="['':'- Chance Cochilar? -']" ></g:select>
									<label for="chanceCochilar"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'CPAP','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite CPAP " id="CPAP" name="CPAP" size="50" value="${fieldValue(bean:questionariopresono,field:'CPAP')}"/>
									<label for="CPAP"><font size="3"><b>CPAP</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'alturaPaciente','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite alturaPaciente " id="alturaPaciente" name="alturaPaciente" size="50" value="${fieldValue(bean:questionariopresono,field:'alturaPaciente')}"/>
									<label for="alturaPaciente"><font size="3"><b>Altura Paciente</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'arritimia','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite arritimia " id="arritimia" name="arritimia" size="50" value="${fieldValue(bean:questionariopresono,field:'arritimia')}"/>
									<label for="arritimia"><font size="3"><b>Arritimia</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'chanceCochilarLegenda','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite chanceCochilarLegenda " id="chanceCochilarLegenda" name="chanceCochilarLegenda" size="50" value="${fieldValue(bean:questionariopresono,field:'chanceCochilarLegenda')}"/>
									<label for="chanceCochilarLegenda"><font size="3"><b>Chance Cochilar Legenda</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'circCervical','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite circCervical " id="circCervical" name="circCervical" size="50" value="${fieldValue(bean:questionariopresono,field:'circCervical')}"/>
									<label for="circCervical"><font size="3"><b>Circ Cervical</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'convenio','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Convenio.list()}" name="convenio.id" value="${questionariopresono?.convenio?.id}" noSelection="['':'- Qual Convênio? -']" ></g:select> <a href="${createLinkTo(dir:'/convenio/create')}">* Cadastrar Convenio</a>
									<label for="convenio"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'doencaCardiaca','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite doencaCardiaca " id="doencaCardiaca" name="doencaCardiaca" size="50" value="${fieldValue(bean:questionariopresono,field:'doencaCardiaca')}"/>
									<label for="doencaCardiaca"><font size="3"><b>Doenca Cardiaca</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'doencaPulmonarCronica','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite doencaPulmonarCronica " id="doencaPulmonarCronica" name="doencaPulmonarCronica" size="50" value="${fieldValue(bean:questionariopresono,field:'doencaPulmonarCronica')}"/>
									<label for="doencaPulmonarCronica"><font size="3"><b>Doenca Pulmonar Cronica</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'dosagemMedicamentoDormir','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamentoDormir " id="dosagemMedicamentoDormir" name="dosagemMedicamentoDormir" size="50" value="${fieldValue(bean:questionariopresono,field:'dosagemMedicamentoDormir')}"/>
									<label for="dosagemMedicamentoDormir"><font size="3"><b>Dosagem Medicamento Dormir</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'dtExame','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dtExame " id="dtExame" name="dtExame" size="50" value="${fieldValue(bean:questionariopresono,field:'dtExame')}"/>
									<label for="dtExame"><font size="3"><b>Dt Exame</b></font></label>
                                </td>
                            </tr>


                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'horaAbitualAcordar','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite horaAbitualAcordar " id="horaAbitualAcordar" name="horaAbitualAcordar" size="50" value="${fieldValue(bean:questionariopresono,field:'horaAbitualAcordar')}"/>
									<label for="horaAbitualAcordar"><font size="3"><b>Hora Abitual Acordar</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'horaAbitualDormir','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite horaAbitualDormir " id="horaAbitualDormir" name="horaAbitualDormir" size="50" value="${fieldValue(bean:questionariopresono,field:'horaAbitualDormir')}"/>
									<label for="horaAbitualDormir"><font size="3"><b>Hora Abitual Dormir</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'medicoRequisitante','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicorequisitante.list()}" name="medicoRequisitante.id" value="${questionariopresono?.medicoRequisitante?.id}" noSelection="['':'- Médico Requisitante? -']" ></g:select> <a href="${createLinkTo(dir:'/medicoRequisitante/create')}">* Cadastrar Medicorequisitante</a>
									<label for="medicoRequisitante"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'medicoResponsavel','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicoresponsavel.list()}" name="medicoResponsavel.id" value="${questionariopresono?.medicoResponsavel?.id}" noSelection="['':'- Médico Responsavel? -']"></g:select> <a href="${createLinkTo(dir:'/medicoResponsavel/create')}">* Cadastrar Medicoresponsavel</a>
									<label for="medicoResponsavel"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'nomeMedicamentoDormir','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicamentoDormir " id="nomeMedicamentoDormir" name="nomeMedicamentoDormir" size="50" value="${fieldValue(bean:questionariopresono,field:'nomeMedicamentoDormir')}"/>
									<label for="nomeMedicamentoDormir"><font size="3"><b>Nome Medicamento Dormir</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'outroMedicamentoUsa','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite outroMedicamentoUsa " id="outroMedicamentoUsa" name="outroMedicamentoUsa" size="50" value="${fieldValue(bean:questionariopresono,field:'outroMedicamentoUsa')}"/>
									<label for="outroMedicamentoUsa"><font size="3"><b>Outro Medicamento Usa</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'outrosMedicamentosUsa','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite outrosMedicamentosUsa " id="outrosMedicamentosUsa" name="outrosMedicamentosUsa" size="50" value="${fieldValue(bean:questionariopresono,field:'outrosMedicamentosUsa')}"/>
									<label for="outrosMedicamentosUsa"><font size="3"><b>Outros Medicamentos Usa</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'paciente','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Paciente.list()}" name="paciente.id" value="${questionariopresono?.paciente?.id}" noSelection="['':'- Paciente? -']" ></g:select> <a href="${createLinkTo(dir:'/paciente/create')}">* Cadastrar Paciente</a>
									<label for="paciente"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'pesoPaciente','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite pesoPaciente " id="pesoPaciente" name="pesoPaciente" size="50" value="${fieldValue(bean:questionariopresono,field:'pesoPaciente')}"/>
									<label for="pesoPaciente"><font size="3"><b>Peso Paciente</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quantHoraSono','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite quantHoraSono " id="quantHoraSono" name="quantHoraSono" size="50" value="${fieldValue(bean:questionariopresono,field:'quantHoraSono')}"/>
									<label for="quantHoraSono"><font size="3"><b>Quant Hora Sono</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quantXicaraCopoRefrigeranteDia','errors')}">
                                    <i class="fa fa-sort-numeric-asc"></i><input placeholder="Digite quantXicaraCopoRefrigeranteDia " class="form-control"  size="50" type="number" id="quantXicaraCopoRefrigeranteDia" name="quantXicaraCopoRefrigeranteDia" value="${fieldValue(bean:questionariopresono,field:'quantXicaraCopoRefrigeranteDia')}" />
									<label for="quantXicaraCopoRefrigeranteDia"><font size="3"><b>Quant Xicara Copo Refrigerante Dia</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quantosPorDia','errors')}">
                                    <i class="fa fa-sort-numeric-asc"></i><input placeholder="Digite quantosPorDia " class="form-control"  size="50" type="number" id="quantosPorDia" name="quantosPorDia" value="${fieldValue(bean:questionariopresono,field:'quantosPorDia')}" />
									<label for="quantosPorDia"><font size="3"><b>Quantos Por Dia</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'quarto','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Quarto.list()}" name="quarto.id" value="${questionariopresono?.quarto?.id}" noSelection="['':'- Quarto? -']" ></g:select> <a href="${createLinkTo(dir:'/quarto/create')}">* Cadastrar Quarto</a>
									<label for="quarto"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'responsaveltecnica','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Responsaveltecnica.list()}" name="responsaveltecnica.id" value="${questionariopresono?.responsaveltecnica?.id}" noSelection="['':'- Responsavel técnica? -']" ></g:select> <a href="${createLinkTo(dir:'/responsaveltecnica/create')}">* Cadastrar Responsaveltecnica</a>
									<label for="responsaveltecnica"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'saoInicial','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite saoInicial " id="saoInicial" name="saoInicial" size="50" value="${fieldValue(bean:questionariopresono,field:'saoInicial')}"/>
									<label for="saoInicial"><font size="3"><b>SaO₂ Inicial %</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'sintomasSonoFamiliaCampo','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite sintomasSonoFamiliaCampo " id="sintomasSonoFamiliaCampo" name="sintomasSonoFamiliaCampo" size="50" value="${fieldValue(bean:questionariopresono,field:'sintomasSonoFamiliaCampo')}"/>
									<label for="sintomasSonoFamiliaCampo"><font size="3"><b>Sintomas Sono Familia Campo</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'tempoFuma','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite tempoFuma " id="tempoFuma" name="tempoFuma" size="50" value="${fieldValue(bean:questionariopresono,field:'tempoFuma')}"/>
									<label for="tempoFuma"><font size="3"><b>Tempo Fuma</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'tempoParou','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite tempoParou " id="tempoParou" name="tempoParou" size="50" value="${fieldValue(bean:questionariopresono,field:'tempoParou')}"/>
									<label for="tempoParou"><font size="3"><b>Tempo Parou</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'usaMedicamentoDormir','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite usaMedicamentoDormir " id="usaMedicamentoDormir" name="usaMedicamentoDormir" size="50" value="${fieldValue(bean:questionariopresono,field:'usaMedicamentoDormir')}"/>
									<label for="usaMedicamentoDormir"><font size="3"><b>Usa Medicamento Dormir</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'voceRonca','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite voceRonca " id="voceRonca" name="voceRonca" size="50" value="${fieldValue(bean:questionariopresono,field:'voceRonca')}"/>
									<label for="voceRonca"><font size="3"><b>Voce Ronca</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'voceRoncaFrequencia','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite voceRoncaFrequencia " id="voceRoncaFrequencia" name="voceRoncaFrequencia" size="50" value="${fieldValue(bean:questionariopresono,field:'voceRoncaFrequencia')}"/>
									<label for="voceRoncaFrequencia"><font size="3"><b>Voce Ronca Frequencia</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop" style="display:none">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'dtCadastro','errors')}">
                                    <input name="dtCadastro" class="form-control" data-clear-btn-text="Limpar Dt Cadastro"  data-clear-btn="true" value="${String.format('%td/%<tm/%<tY',questionariopresono?.dtCadastro)}" ></input>
									<label for="dtCadastro"><font size="3"><b>Dt Cadastro</b></font></label>
                                </td>
                            </tr>

                             <tr class="prop" style="display:none">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopresono,field:'exame','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Exame.list()}" name="exame.id" value="${questionariopresono?.exame?.id}" noSelection="['':'- Qual Exame? -']" ></g:select> <a href="${createLinkTo(dir:'/exame/create')}">* Cadastrar Exame</a>
									<label for="exame"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>
	            <div class="buttons" align="center">
                    <span class="button"><input  class="btn waves-effect waves-light  red lighten-2 z-depth-5" style="padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Salvar"/></span>
                </div><br>
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
