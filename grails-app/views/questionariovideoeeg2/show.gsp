

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
		  
        <title>Dados Questionariovideoeeg</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">  
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="/teste/questionariovideoeeg2/list" target="_self">Voltar</a></li>
			<li class="tab  disabled"><a class="active">Listar</a></li>
			<li class="tab"><a href="/teste/questionariovideoeeg2/create" target="_self">Novo</a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">   
	<div class="container" style="margin-top:40px;">
    <body>
        <div class="card z-depth-5"><div class="card-image"></div>		
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light blue lighten-2 z-depth-5">${flash.message}</nav>
            </g:if>
            <div class="dialog">
                <table class="striped left grey lighten-2">
                    <tbody>

                        <div class="card-content red lighten-2">
                                <h4 align="center" class="white-text">Dados Questionário Video - EGG</h4>
                        </div>

                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Pais Parentes:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'paisParentes')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Problema Gravidez Parto:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'problemaGravidezParto')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Frequenta (ou) escola Normal:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'frequentaescola')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Convulção com Febre Infância:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'convulcaocomFebreInfancia')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Quantos Anos Andou:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'anosAndou')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Quantos Anos Falou:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'anosFalou')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Convênio:</td>
                            
                            <td valign="top" class="value"><g:link controller="convenio" action="show" id="${questionariovideoeeg2?.convenio?.id}">${questionariovideoeeg2?.convenio?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Descrição Eventos:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'descricaoEventos')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Descrição Sintomas Crise Testemunha:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'descricaoSintomasCriseTestemunha')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Diagnóstico Enfermagem:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'diagnosticoEnfermagem')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Dosagem Medicamento 1:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'dosagemMedicamento1')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Dosagem Medicamento 2:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'dosagemMedicamento2')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Dosagem Medicamento 3:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'dosagemMedicamento3')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Dosagem Medicamento 4:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'dosagemMedicamento4')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Dosagem Medicamento 5:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'dosagemMedicamento5')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Dosagem Medicamento 6:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'dosagemMedicamento6')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Data do Exame:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'dtExame')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Frequencia Atual Crise:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'frequenciaAtualCrise')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Idade Crise Epiletptica Anos:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'idadeCriseEpiletpticaAnos')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Idade Crise Epiletptica Meses:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'idadeCriseEpiletpticaMeses')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Intervencao Enfermagem:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'intervencaoEnfermagem')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Médico Requisitante:</td>
                            
                            <td valign="top" class="value"><g:link controller="medicorequisitante" action="show" id="${questionariovideoeeg2?.medicoRequisitante?.id}">${questionariovideoeeg2?.medicoRequisitante?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Médico Responsável:</td>
                            
                            <td valign="top" class="value"><g:link controller="medicoresponsavel" action="show" id="${questionariovideoeeg2?.medicoResponsavel?.id}">${questionariovideoeeg2?.medicoResponsavel?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Nome Medicação 1:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'nomeMedicacao1')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Nome Medicação 2:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'nomeMedicacao2')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome Medicação 3:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'nomeMedicacao3')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome Medicação 4:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'nomeMedicacao4')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome Medicação 5:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg2, field:'nomeMedicacao5')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome Medicação 6:</td>
                            
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
                            <td valign="top" class="name">Responsável Técnica:</td>
                            
                            <td valign="top" class="value"><g:link controller="responsaveltecnica" action="show" id="${questionariovideoeeg2?.responsaveltecnica?.id}">${questionariovideoeeg2?.responsaveltecnica?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons" align="center"><br>
                <g:form>
                    <input type="hidden" name="id" value="${questionariovideoeeg2?.id}" />
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2 z-depth-5" style="padding:10px;margin:10px;size:30px;width:110px;"  action="Edit"   value="Editar"/></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2 z-depth-5" style="padding:10px;margin:10px;size:30px;width:110px;"  action="Delete" value="Apagar"/></span>
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
