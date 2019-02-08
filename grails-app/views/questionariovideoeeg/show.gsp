

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
			<li class="tab"><a href="/teste/questionariovideoeeg/list" target="_self">Voltar</a></li>
			<li class="tab  disabled"><a class="active">Listar</a></li>
			<li class="tab"><a href="/teste/questionariovideoeeg/create" target="_self">Novo</a></li>
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
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Pais Parentes:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'paisParentes')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Problema Gravidez Parto:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'problemaGravidezParto')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Desenvolvimento Normal:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'desenvolvimentoNormal')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Convulcao Infancia:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'convulcaoInfancia')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Anos Andou:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'anosAndou')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Anos Falou:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'anosFalou')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Convenio:</td>
                            
                            <td valign="top" class="value"><g:link controller="convenio" action="show" id="${questionariovideoeeg?.convenio?.id}">${questionariovideoeeg?.convenio?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Crisesepileticas Idade Ano:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'crisesepileticasIdadeAno')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Crisesepileticas Idade Meses:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'crisesepileticasIdadeMeses')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Descreva Crise Sinal:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'descrevaCriseSinal')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Dosagem Medicamento Crise:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'dosagemMedicamentoCrise')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Dosagem Medicamento Doenca:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'dosagemMedicamentoDoenca')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Frequencia Crise Ano:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'frequenciaCriseAno')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Frequencia Crise Dia:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'frequenciaCriseDia')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Frequencia Crise Mes:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'frequenciaCriseMes')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Frequencia Crise Semana:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'frequenciaCriseSemana')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Medico Requisitante:</td>
                            
                            <td valign="top" class="value"><g:link controller="medicorequisitante" action="show" id="${questionariovideoeeg?.medicoRequisitante?.id}">${questionariovideoeeg?.medicoRequisitante?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Medico Responsavel:</td>
                            
                            <td valign="top" class="value"><g:link controller="medicoresponsavel" action="show" id="${questionariovideoeeg?.medicoResponsavel?.id}">${questionariovideoeeg?.medicoResponsavel?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Nome Remedio Crise:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'nomeRemedioCrise')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Nome Remedio Doenca:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'nomeRemedioDoenca')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Paciente:</td>
                            
                            <td valign="top" class="value"><g:link controller="paciente" action="show" id="${questionariovideoeeg?.paciente?.id}">${questionariovideoeeg?.paciente?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Paciente Desenvolvimento Normal:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'pacienteDesenvolvimentoNormal')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Qual Medicacao Tomou Crise:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'qualMedicacaoTomouCrise')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Qual Medicacao Tomou Doenca:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'qualMedicacaoTomouDoenca')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Qualproblema Gravidez Parto:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'qualproblemaGravidezParto')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Quantas Convulsoes:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariovideoeeg, field:'quantasConvulsoes')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div><br>
            <div class="buttons" align="center">
                <g:form>
                    <input type="hidden" name="id" value="${questionariovideoeeg?.id}" />
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2" style="padding:10px;margin:10px;size:30px;width:110px;"   action="Edit"   value="Editar"/></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2" style="padding:10px;margin:10px;size:30px;width:110px;"  action="Delete" value="Apagar"/></span>
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
