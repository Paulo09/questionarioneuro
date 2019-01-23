

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
	<nav class="nav-extended btn waves-effect waves-light red lighten-2">  
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="/teste/usuario/menu" target="_self">Voltar</a></li>
			<li class="tab  disabled"><a class="active">Listar</a></li>
			<li class="tab"><a href="/teste/questionariovideoeeg/create" target="_self">Novo</a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">   
	<div class="container" style="margin-top:40px;">
    <body>
        <div class="card  grey lighten-4"><div class="card-image"></div>
        <div class="body">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${questionariovideoeeg}">
            <div class="errors">
                <g:renderErrors bean="${questionariovideoeeg}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${questionariovideoeeg?.id}" />
                <div class="dialog">
                    <table class="striped left grey lighten-2">
                        <tbody>

                             <div class="card-content red lighten-2">
                                <h4 align="center" class="white-text">Dados Questionário Vídeo - EGG</h4>
                            </div>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paisParentes"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'paisParentes','errors')}">
                                    <g:select id="paisParentes" name="paisParentes" from="${questionariovideoeeg.constraints.paisParentes.inList}" value="${questionariovideoeeg.paisParentes}" noSelection="['':'- Pais Parentes Entre Si? -']" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="problemaGravidezParto"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'problemaGravidezParto','errors')}">
                                    <g:select id="problemaGravidezParto" name="problemaGravidezParto" from="${questionariovideoeeg.constraints.problemaGravidezParto.inList}" value="${questionariovideoeeg.problemaGravidezParto}" noSelection="['':'- Problema Gravidez Parto: -']" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="desenvolvimentoNormal"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'desenvolvimentoNormal','errors')}">
                                    <g:select id="desenvolvimentoNormal" name="desenvolvimentoNormal" from="${questionariovideoeeg.constraints.desenvolvimentoNormal.inList}" value="${questionariovideoeeg.desenvolvimentoNormal}" noSelection="['':'- Desenvolvimento Normal: -']" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="convulcaoInfancia"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'convulcaoInfancia','errors')}">
                                    <g:select id="convulcaoInfancia" name="convulcaoInfancia" from="${questionariovideoeeg.constraints.convulcaoInfancia.inList}" value="${questionariovideoeeg.convulcaoInfancia}" noSelection="['':'- Convulção Infância: -']" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anosAndou"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'anosAndou','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite anosAndou " id="anosAndou" name="anosAndou" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'anosAndou')}"/>
                                    <label><font size="3"><b>Anos Andou</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anosFalou"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'anosFalou','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite anosFalou " id="anosFalou" name="anosFalou" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'anosFalou')}"/>
                                    <label><font size="3"><b>Anos Falou</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="convenio"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'convenio','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Convenio.list()}" name="convenio.id" value="${questionariovideoeeg?.convenio?.id}" noSelection="['':'- Convênio: -']" ></g:select> <a href="${createLinkTo(dir:'/convenio/create')}">* Cadastrar Convenio</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="crisesepileticasIdadeAno"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'crisesepileticasIdadeAno','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite crisesepileticasIdadeAno " id="crisesepileticasIdadeAno" name="crisesepileticasIdadeAno" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'crisesepileticasIdadeAno')}"/>
                                    <label><font size="3"><b>Crisesepileticas Idade Ano</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="crisesepileticasIdadeMeses"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'crisesepileticasIdadeMeses','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite crisesepileticasIdadeMeses " id="crisesepileticasIdadeMeses" name="crisesepileticasIdadeMeses" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'crisesepileticasIdadeMeses')}"/>
                                     <label><font size="3"><b>Crisesepileticas Idade Meses</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descrevaCriseSinal"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'descrevaCriseSinal','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite descrevaCriseSinal " id="descrevaCriseSinal" name="descrevaCriseSinal" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'descrevaCriseSinal')}"/>
                                    <label><font size="3"><b>Descreva Crise Sinal</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamentoCrise"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'dosagemMedicamentoCrise','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamentoCrise " id="dosagemMedicamentoCrise" name="dosagemMedicamentoCrise" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'dosagemMedicamentoCrise')}"/>
                                    <label><font size="3"><b>Dosagem Medicamento Crise</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamentoDoenca"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'dosagemMedicamentoDoenca','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamentoDoenca " id="dosagemMedicamentoDoenca" name="dosagemMedicamentoDoenca" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'dosagemMedicamentoDoenca')}"/>
                                    <label><font size="3"><b>Dosagem Medicamento Doença</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="frequenciaCriseAno"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'frequenciaCriseAno','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite frequenciaCriseAno " id="frequenciaCriseAno" name="frequenciaCriseAno" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'frequenciaCriseAno')}"/>
                                    <label><font size="3"><b>Frequência Crise Ano</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="frequenciaCriseDia"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'frequenciaCriseDia','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite frequenciaCriseDia " id="frequenciaCriseDia" name="frequenciaCriseDia" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'frequenciaCriseDia')}"/>
                                    <label><font size="3"><b>Frequência Crise Dia</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="frequenciaCriseMes"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'frequenciaCriseMes','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite frequenciaCriseMes " id="frequenciaCriseMes" name="frequenciaCriseMes" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'frequenciaCriseMes')}"/>
                                    <label><font size="3"><b>Frequência Crise Mês</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="frequenciaCriseSemana"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'frequenciaCriseSemana','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite frequenciaCriseSemana " id="frequenciaCriseSemana" name="frequenciaCriseSemana" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'frequenciaCriseSemana')}"/>
                                    <label><font size="3"><b>Frequencia Crise Semana</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medicoRequisitante"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'medicoRequisitante','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicorequisitante.list()}" name="medicoRequisitante.id" value="${questionariovideoeeg?.medicoRequisitante?.id}" noSelection="['':'- Médico Requisitante: -']" ></g:select> <a href="${createLinkTo(dir:'/medicoRequisitante/create')}">* Cadastrar Medicorequisitante</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medicoResponsavel"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'medicoResponsavel','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicoresponsavel.list()}" name="medicoResponsavel.id" value="${questionariovideoeeg?.medicoResponsavel?.id}" noSelection="['':'- Médico Responsável: -']" ></g:select> <a href="${createLinkTo(dir:'/medicoResponsavel/create')}">* Cadastrar Medicoresponsavel</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeRemedioCrise"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'nomeRemedioCrise','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite nomeRemedioCrise " id="nomeRemedioCrise" name="nomeRemedioCrise" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'nomeRemedioCrise')}"/>
                                    <label><font size="3"><b>Nome Remédio Crise</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeRemedioDoenca"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'nomeRemedioDoenca','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite nomeRemedioDoenca " id="nomeRemedioDoenca" name="nomeRemedioDoenca" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'nomeRemedioDoenca')}"/>
                                    <label><font size="3"><b>Nome Remédio Doença</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paciente"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'paciente','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Paciente.list()}" name="paciente.id" value="${questionariovideoeeg?.paciente?.id}" noSelection="['':'- Paciente: -']" ></g:select> <a href="${createLinkTo(dir:'/paciente/create')}">* Cadastrar Paciente</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="pacienteDesenvolvimentoNormal"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'pacienteDesenvolvimentoNormal','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite pacienteDesenvolvimentoNormal " id="pacienteDesenvolvimentoNormal" name="pacienteDesenvolvimentoNormal" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'pacienteDesenvolvimentoNormal')}"/>
                                    <label><font size="3"><b>Paciente Desenvolvimento Normal</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="qualMedicacaoTomouCrise"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'qualMedicacaoTomouCrise','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite qualMedicacaoTomouCrise " id="qualMedicacaoTomouCrise" name="qualMedicacaoTomouCrise" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'qualMedicacaoTomouCrise')}"/>
                                    <label><font size="3"><b>Qual Medicação Tomou na Crise</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="qualMedicacaoTomouDoenca"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'qualMedicacaoTomouDoenca','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite qualMedicacaoTomouDoenca " id="qualMedicacaoTomouDoenca" name="qualMedicacaoTomouDoenca" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'qualMedicacaoTomouDoenca')}"/>
                                    <label><font size="3"><b>Qual Medicação Tomou Doença</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="qualproblemaGravidezParto"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'qualproblemaGravidezParto','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite qualproblemaGravidezParto " id="qualproblemaGravidezParto" name="qualproblemaGravidezParto" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'qualproblemaGravidezParto')}"/>
                                    <label><font size="3"><b>Qualproblema Gravidez Parto</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantasConvulsoes"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'quantasConvulsoes','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite quantasConvulsoes " id="quantasConvulsoes" name="quantasConvulsoes" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'quantasConvulsoes')}"/>
                                    <label><font size="3"><b>Quantas Convulsões</b></font></label>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div><br>
                <div class="buttons" align="center">
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="Update" value="Salvar"  /></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="delete" value="Apagar"  /></span>
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
