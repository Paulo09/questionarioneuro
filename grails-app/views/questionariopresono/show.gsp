

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

        <title>Dados Questionariopresono</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="/teste/questionariopresono/list" target="_self">Voltar</a></li>
			<li class="tab"><a class="active">Dados</a></li>
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
            <div class="dialog">

                <div class="list">
				<div class="card z-depth-5">
				<div class="card-image"></div>
				<div class="body">

                <table class="striped left grey lighten-2">
                    <tbody>

                        <div class="card-content red lighten-2">
                            <h4 align="center" class="white-text">Questionário Video - Pré-Sono</h4>
                        </div>


                        <tr class="prop">
                            <td valign="top" class="name"><b>Id:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'id')}</td>

                        </tr>

                         <tr class="prop">
                            <td valign="top" class="name"><b>Paciente:</td>

                            <td valign="top" class="value"><g:link controller="paciente" action="show" id="${questionariopresono?.paciente?.id}">${questionariopresono?.paciente?.encodeAsHTML()}</g:link></td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Ja Fumou:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'jaFumou')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Fuma:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'fuma')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Tratamento Apineia Sono:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'tratamentoApineiaSono')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Você Tem:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'voceTem')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Quanto Tempodemora Dormir:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'quantoTempodemoraDormir')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Como Vocecorda Costume:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'comoVocecordaCostume')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Sentemuita Sonolencia:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'sentemuitaSonolencia')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Sente muita Fadiga:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'sentemuitaFadiga')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Qual Tipo:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'qualTipo')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Bebida Alcoólica:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'bebidaAlcoolica')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Sintomas Sono Família:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'sintomasSonoFamilia')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Chance Cochilar:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'chanceCochilar')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>CPAP:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'CPAP')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Altura Paciente:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'alturaPaciente')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Arritimia:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'arritimia')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Chance Cochilar Legenda:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'chanceCochilarLegenda')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Circ Cervical:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'circCervical')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Convênio:</td>

                            <td valign="top" class="value"><g:link controller="convenio" action="show" id="${questionariopresono?.convenio?.id}">${questionariopresono?.convenio?.encodeAsHTML()}</g:link></td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Doença Cardiaca:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'doencaCardiaca')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Doença Pulmonar Crônica:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'doencaPulmonarCronica')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Dosagem Medicamento Dormir:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'dosagemMedicamentoDormir')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Data Cadastro:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'dtCadastro')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name">Dt Exame:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'dtExame')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Tipo do Exame Feito:</td>

                            <td valign="top" class="value"><g:link controller="exame" action="show" id="${questionariopresono?.exame?.id}">${questionariopresono?.exame?.encodeAsHTML()}</g:link></td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Hora Abitual Acordar:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'horaAbitualAcordar')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Hora Abitual Dormir:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'horaAbitualDormir')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Médico Requisitante:</td>

                            <td valign="top" class="value"><g:link controller="medicorequisitante" action="show" id="${questionariopresono?.medicoRequisitante?.id}">${questionariopresono?.medicoRequisitante?.encodeAsHTML()}</g:link></td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Médico Responsavel:</td>

                            <td valign="top" class="value"><g:link controller="medicoresponsavel" action="show" id="${questionariopresono?.medicoResponsavel?.id}">${questionariopresono?.medicoResponsavel?.encodeAsHTML()}</g:link></td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Nome Medicamento Dormir:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'nomeMedicamentoDormir')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Outro Medicamento Usa:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'outroMedicamentoUsa')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Outros Medicamentos Usa:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'outrosMedicamentosUsa')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Paciente:</td>

                            <td valign="top" class="value"><g:link controller="paciente" action="show" id="${questionariopresono?.paciente?.id}">${questionariopresono?.paciente?.encodeAsHTML()}</g:link></td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Peso Paciente:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'pesoPaciente')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Quantidade Hora Sono:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'quantHoraSono')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Quantidade Xícara ou Copo Refrigerante Dia:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'quantXicaraCopoRefrigeranteDia')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Quantos Por Dia:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'quantosPorDia')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Quarto:</td>

                            <td valign="top" class="value"><g:link controller="quarto" action="show" id="${questionariopresono?.quarto?.id}">${questionariopresono?.quarto?.encodeAsHTML()}</g:link></td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Responsável Técnica(o):</td>

                            <td valign="top" class="value"><g:link controller="responsaveltecnica" action="show" id="${questionariopresono?.responsaveltecnica?.id}">${questionariopresono?.responsaveltecnica?.encodeAsHTML()}</g:link></td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>SaO₂ Inicial:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'saoInicial')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Sintomas Sono Familia Campo:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'sintomasSonoFamiliaCampo')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Tempo Fuma:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'tempoFuma')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Tempo Parou:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'tempoParou')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Usa Medicamento Dormir:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'usaMedicamentoDormir')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Você Ronca:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'voceRonca')}</td>

                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name"><b>Você Ronca Frequência:</td>

                            <td valign="top" class="value">${fieldValue(bean:questionariopresono, field:'voceRoncaFrequencia')}</td>

                        </tr>

                    </tbody>
                </table>
            </div>
            <div class="buttons" align="center"><br>
                <g:form>
                    <input type="hidden" name="id" value="${questionariopresono?.id}" />
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2 z-depth-5" style="background-image:url(${createLinkTo(dir:'images/view/show/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;"  action="Edit"   value="Editar"/></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2 z-depth-5" style="background-image:url(${createLinkTo(dir:'images/view/show/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="Delete" value="Apagar"/></span>
                </g:form>
            </div><br>
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
