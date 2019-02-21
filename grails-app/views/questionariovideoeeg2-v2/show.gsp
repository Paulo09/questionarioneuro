

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
		  
        <title>Dados Questionariovideoeeg2</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/show/barraMenu',file:'barraMenu.jpg')});">  
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
    <body style="background-image:url(${createLinkTo(dir:'images/view/show/backgroundPagina',file:'backgroundPagina.jpg')});background-repeat:no-repeat;background-size:cover;">
        <div class="card">
		  <div class="card-image">
		  <img src="${createLinkTo(dir:'images/view/show/backgroundCard',file:'backgroundCard.jpg')}">
		  <span class="card-title"><b>D</b>ados <b>Questionariovideoeeg2</b></span>
		</div>		
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/show/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <div class="dialog">
                <table class="striped centered">
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Pais Parentes:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'paisParentes')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Problema Gravidez Parto:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'problemaGravidezParto')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Frequentaescola:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'frequentaescola')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Convulcaocom Febre Infancia:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'convulcaocomFebreInfancia')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Anos Andou:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'anosAndou')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Anos Falou:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'anosFalou')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Convenio:</td>
                            
                            <td valign="top" class="value"><g:link controller="convenio" action="show" id="${questionariovideoeeg2?.convenio?.id}">${questionariovideoeeg2?.convenio?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Descricao Eventos:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'descricaoEventos')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Descricao Sintomas Crise Testemunha:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'descricaoSintomasCriseTestemunha')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Diagnostico Enfermagem:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'diagnosticoEnfermagem')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Dosagem Medicamento1:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'dosagemMedicamento1')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Dosagem Medicamento2:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'dosagemMedicamento2')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Dosagem Medicamento3:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'dosagemMedicamento3')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Dosagem Medicamento4:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'dosagemMedicamento4')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Dosagem Medicamento5:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'dosagemMedicamento5')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Dosagem Medicamento6:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'dosagemMedicamento6')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Dt Exame:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'dtExame')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Frequencia Atual Crise:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'frequenciaAtualCrise')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Idade Crise Epiletptica Anos:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'idadeCriseEpiletpticaAnos')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Idade Crise Epiletptica Meses:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'idadeCriseEpiletpticaMeses')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Intervencao Enfermagem:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'intervencaoEnfermagem')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Medico Requisitante:</td>
                            
                            <td valign="top" class="value"><g:link controller="medicorequisitante" action="show" id="${questionariovideoeeg2?.medicoRequisitante?.id}">${questionariovideoeeg2?.medicoRequisitante?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Medico Responsavel:</td>
                            
                            <td valign="top" class="value"><g:link controller="medicoresponsavel" action="show" id="${questionariovideoeeg2?.medicoResponsavel?.id}">${questionariovideoeeg2?.medicoResponsavel?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome Medicacao1:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'nomeMedicacao1')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome Medicacao2:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'nomeMedicacao2')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome Medicacao3:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'nomeMedicacao3')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome Medicacao4:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'nomeMedicacao4')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome Medicacao5:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'nomeMedicacao5')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome Medicacao6:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'nomeMedicacao6')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Paciente:</td>
                            
                            <td valign="top" class="value"><g:link controller="paciente" action="show" id="${questionariovideoeeg2?.paciente?.id}">${questionariovideoeeg2?.paciente?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Qualproblema Gravidez Parto:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'qualproblemaGravidezParto')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Responsaveltecnica:</td>
                            
                            <td valign="top" class="value"><g:link controller="responsaveltecnica" action="show" id="${questionariovideoeeg2?.responsaveltecnica?.id}">${questionariovideoeeg2?.responsaveltecnica?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons" align="center"><br>
                <g:form>
                    <input type="hidden" name="id" value="${questionariovideoeeg2?.id}" />
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/show/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;"  onclick="return confirm('Deseja Editar os dados?');" action="Edit"   value="Editar"/></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/show/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" onclick="return confirm('Deseja apagar os dados?');" action="Delete" value="Apagar"/></span>
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
