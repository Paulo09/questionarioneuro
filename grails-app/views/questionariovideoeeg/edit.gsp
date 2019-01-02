

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
        <title>Editar Dados Questionário Vídeo - EEG</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light red lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/edit/barraMenu',file:'barraMenu.jpg')});">  
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="#test1">Sair</a></li>
			<li class="tab"><a class="active" href="#test2">Menu</a></li>
			<li class="tab disabled"><a href="#test3">Buscar</a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">   
	<div class="container" style="margin-top:40px;">
    <body style="background-image:url(${createLinkTo(dir:'images/view/edit/backgroundPagina',file:'backgroundPagina.jpg')});background-repeat:no-repeat;background-size:cover;">
        <div class="card  grey lighten-4"><div class="card-image"></div>
        <div class="body">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${questionariovideoeeg}">
            <div class="errors">
                <g:renderErrors bean="${questionariovideoeeg}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${questionariovideoeeg?.id}" />
                <div class="dialog">
                    <table class="striped centered grey lighten-2">
                        <tbody>

                             <div class="card-content red lighten-2">
                                <h4 align="center" class="white-text">Dados Questionário Vídeo - EGG</h4>
                            </div>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paisParentes">Pais Parentes:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'paisParentes','errors')}">
                                    <i class="fa fa-list"></i><g:select id="paisParentes" name="paisParentes" from="${questionariovideoeeg.constraints.paisParentes.inList}" value="${questionariovideoeeg.paisParentes}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="problemaGravidezParto">Problema Gravidez Parto:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'problemaGravidezParto','errors')}">
                                    <i class="fa fa-list"></i><g:select id="problemaGravidezParto" name="problemaGravidezParto" from="${questionariovideoeeg.constraints.problemaGravidezParto.inList}" value="${questionariovideoeeg.problemaGravidezParto}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="desenvolvimentoNormal">Desenvolvimento Normal:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'desenvolvimentoNormal','errors')}">
                                    <i class="fa fa-list"></i><g:select id="desenvolvimentoNormal" name="desenvolvimentoNormal" from="${questionariovideoeeg.constraints.desenvolvimentoNormal.inList}" value="${questionariovideoeeg.desenvolvimentoNormal}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="convulcaoInfancia">Convulcao Infancia:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'convulcaoInfancia','errors')}">
                                    <i class="fa fa-list"></i><g:select id="convulcaoInfancia" name="convulcaoInfancia" from="${questionariovideoeeg.constraints.convulcaoInfancia.inList}" value="${questionariovideoeeg.convulcaoInfancia}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anosAndou">Anos Andou:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'anosAndou','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite anosAndou " id="anosAndou" name="anosAndou" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'anosAndou')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anosFalou">Anos Falou:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'anosFalou','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite anosFalou " id="anosFalou" name="anosFalou" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'anosFalou')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="convenio">Convenio:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'convenio','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Convenio.list()}" name="convenio.id" value="${questionariovideoeeg?.convenio?.id}" ></g:select> <a href="${createLinkTo(dir:'/convenio/create')}">* Cadastrar Convenio</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="crisesepileticasIdadeAno">Crisesepileticas Idade Ano:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'crisesepileticasIdadeAno','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite crisesepileticasIdadeAno " id="crisesepileticasIdadeAno" name="crisesepileticasIdadeAno" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'crisesepileticasIdadeAno')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="crisesepileticasIdadeMeses">Crisesepileticas Idade Meses:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'crisesepileticasIdadeMeses','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite crisesepileticasIdadeMeses " id="crisesepileticasIdadeMeses" name="crisesepileticasIdadeMeses" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'crisesepileticasIdadeMeses')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descrevaCriseSinal">Descreva Crise Sinal:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'descrevaCriseSinal','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite descrevaCriseSinal " id="descrevaCriseSinal" name="descrevaCriseSinal" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'descrevaCriseSinal')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamentoCrise">Dosagem Medicamento Crise:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'dosagemMedicamentoCrise','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamentoCrise " id="dosagemMedicamentoCrise" name="dosagemMedicamentoCrise" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'dosagemMedicamentoCrise')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamentoDoenca">Dosagem Medicamento Doenca:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'dosagemMedicamentoDoenca','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamentoDoenca " id="dosagemMedicamentoDoenca" name="dosagemMedicamentoDoenca" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'dosagemMedicamentoDoenca')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="frequenciaCriseAno">Frequencia Crise Ano:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'frequenciaCriseAno','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite frequenciaCriseAno " id="frequenciaCriseAno" name="frequenciaCriseAno" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'frequenciaCriseAno')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="frequenciaCriseDia">Frequencia Crise Dia:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'frequenciaCriseDia','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite frequenciaCriseDia " id="frequenciaCriseDia" name="frequenciaCriseDia" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'frequenciaCriseDia')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="frequenciaCriseMes">Frequencia Crise Mes:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'frequenciaCriseMes','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite frequenciaCriseMes " id="frequenciaCriseMes" name="frequenciaCriseMes" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'frequenciaCriseMes')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="frequenciaCriseSemana">Frequencia Crise Semana:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'frequenciaCriseSemana','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite frequenciaCriseSemana " id="frequenciaCriseSemana" name="frequenciaCriseSemana" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'frequenciaCriseSemana')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medicoRequisitante">Medico Requisitante:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'medicoRequisitante','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicorequisitante.list()}" name="medicoRequisitante.id" value="${questionariovideoeeg?.medicoRequisitante?.id}" ></g:select> <a href="${createLinkTo(dir:'/medicoRequisitante/create')}">* Cadastrar Medicorequisitante</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medicoResponsavel">Medico Responsavel:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'medicoResponsavel','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicoresponsavel.list()}" name="medicoResponsavel.id" value="${questionariovideoeeg?.medicoResponsavel?.id}" ></g:select> <a href="${createLinkTo(dir:'/medicoResponsavel/create')}">* Cadastrar Medicoresponsavel</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeRemedioCrise">Nome Remedio Crise:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'nomeRemedioCrise','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeRemedioCrise " id="nomeRemedioCrise" name="nomeRemedioCrise" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'nomeRemedioCrise')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeRemedioDoenca">Nome Remedio Doenca:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'nomeRemedioDoenca','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeRemedioDoenca " id="nomeRemedioDoenca" name="nomeRemedioDoenca" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'nomeRemedioDoenca')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paciente">Paciente:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'paciente','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Paciente.list()}" name="paciente.id" value="${questionariovideoeeg?.paciente?.id}" ></g:select> <a href="${createLinkTo(dir:'/paciente/create')}">* Cadastrar Paciente</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pacienteDesenvolvimentoNormal">Paciente Desenvolvimento Normal:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'pacienteDesenvolvimentoNormal','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite pacienteDesenvolvimentoNormal " id="pacienteDesenvolvimentoNormal" name="pacienteDesenvolvimentoNormal" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'pacienteDesenvolvimentoNormal')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="qualMedicacaoTomouCrise">Qual Medicacao Tomou Crise:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'qualMedicacaoTomouCrise','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite qualMedicacaoTomouCrise " id="qualMedicacaoTomouCrise" name="qualMedicacaoTomouCrise" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'qualMedicacaoTomouCrise')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="qualMedicacaoTomouDoenca">Qual Medicacao Tomou Doenca:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'qualMedicacaoTomouDoenca','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite qualMedicacaoTomouDoenca " id="qualMedicacaoTomouDoenca" name="qualMedicacaoTomouDoenca" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'qualMedicacaoTomouDoenca')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="qualproblemaGravidezParto">Qualproblema Gravidez Parto:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'qualproblemaGravidezParto','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite qualproblemaGravidezParto " id="qualproblemaGravidezParto" name="qualproblemaGravidezParto" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'qualproblemaGravidezParto')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantasConvulsoes">Quantas Convulsoes:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'quantasConvulsoes','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite quantasConvulsoes " id="quantasConvulsoes" name="quantasConvulsoes" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'quantasConvulsoes')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div><br>
                <div class="buttons" align="center">
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="Update" value="Salvar" onclick="return confirm('Deseja editar os dados?');" /></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="delete" value="Apagar" onclick="return confirm('Deseja apagar os dados?');" /></span>
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
