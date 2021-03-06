

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
        <div class="card grey lighten-2 z-depth-5"><div class="card-image"></div>
        <div class="body">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${questionariovideoeeg}">
            <div class="errors">
                <g:renderErrors bean="${questionariovideoeeg2}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${questionariovideoeeg2?.id}" />
                <div class="dialog">
                    <table class="striped left grey lighten-2">
                        <tbody>

                            <div class="card-content red lighten-2">
                                <h4 align="center" class="white-text">Editar Dados Vídeo EEG</h4>
                            </div>

                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paciente"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'paciente','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Paciente.list()}" name="paciente.id" value="${questionariovideoeeg2?.paciente?.id}" noSelection="['':'- Paciente? -']" ></g:select> <a href="${createLinkTo(dir:'/paciente/create')}">* Cadastrar Paciente</a>
                                </td>
                            </tr> 

                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paisParentes"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'paisParentes','errors')}">
                                    <i class="fa fa-list"></i><g:select id="paisParentes" name="paisParentes" from="${questionariovideoeeg2.constraints.paisParentes.inList}" value="${questionariovideoeeg2.paisParentes}" noSelection="['':'- Pais Parentes entre si? -']"></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="problemaGravidezParto"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'problemaGravidezParto','errors')}">
                                    <i class="fa fa-list"></i><g:select id="problemaGravidezParto" name="problemaGravidezParto" from="${questionariovideoeeg2.constraints.problemaGravidezParto.inList}" value="${questionariovideoeeg2.problemaGravidezParto}" noSelection="['':'- Problema na Gravidez ou no Parto? -']"></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="frequentaescola"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'frequentaescola','errors')}">
                                    <i class="fa fa-list"></i><g:select id="frequentaescola" name="frequentaescola" from="${questionariovideoeeg2.constraints.frequentaescola.inList}" value="${questionariovideoeeg2.frequentaescola}"  noSelection="['':'- Frequenta (ou) Escola Normal ? -']"></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="convulcaocomFebreInfancia"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'convulcaocomFebreInfancia','errors')}">
                                    <i class="fa fa-list"></i><g:select id="convulcaocomFebreInfancia" name="convulcaocomFebreInfancia" from="${questionariovideoeeg2.constraints.convulcaocomFebreInfancia.inList}" value="${questionariovideoeeg2.convulcaocomFebreInfancia}" noSelection="['':'- Convulção com Febre na Infância? -']"></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anosAndou"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'anosAndou','errors')}">
                                    <input type="text" class="form-control" size="50" placeholder="Digite anosAndou " id="anosAndou" name="anosAndou" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'anosAndou')}"/>
                                    <label for="descricao"><font size="3"><b>Anos Andou?</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anosFalou"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'anosFalou','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite anosFalou " id="anosFalou" name="anosFalou" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'anosFalou')}"/>
                                    <label for="descricao"><font size="3"><b>Anos Falou?</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="convenio"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'convenio','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Convenio.list()}" name="convenio.id" value="${questionariovideoeeg2?.convenio?.id}" noSelection="['':'- Qual o Convenio? -']" ></g:select> <a href="${createLinkTo(dir:'/convenio/create')}">* Cadastrar Convenio</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricaoEventos"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'descricaoEventos','errors')}">
                                    <i class="fa fa-pencil-square-o"></i><g:textArea type="text" placeholder="Digite descricaoEventos " class="materialize-textarea" id="descricaoEventos" name="descricaoEventos" value="${fieldValue(bean:questionariovideoeeg2,field:'descricaoEventos')}"/>
                                    <label for="descricao"><font size="3"><b>Descrição Eventos?</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricaoSintomasCriseTestemunha"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'descricaoSintomasCriseTestemunha','errors')}">
                                    <i class="fa fa-pencil-square-o"></i><g:textArea type="text" placeholder="Digite descricaoSintomasCriseTestemunha " class="materialize-textarea" id="descricaoSintomasCriseTestemunha" name="descricaoSintomasCriseTestemunha" value="${fieldValue(bean:questionariovideoeeg2,field:'descricaoSintomasCriseTestemunha')}"/>
                                     <label for="descricao"><font size="3"><b>Descreva os Sintomas da Crise</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="diagnosticoEnfermagem"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'diagnosticoEnfermagem','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite diagnosticoEnfermagem " id="diagnosticoEnfermagem" name="diagnosticoEnfermagem" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'diagnosticoEnfermagem')}"/>
                                    <label for="descricao"><font size="3"><b>Diagnóstico Enfermagem</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamento1"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento1','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento1 " id="dosagemMedicamento1" name="dosagemMedicamento1" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento1')}"/>
                                     <label for="descricao"><font size="3"><b>Dosagem Medicamento 1</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamento2"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento2','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento2 " id="dosagemMedicamento2" name="dosagemMedicamento2" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento2')}"/>
                                     <label for="descricao"><font size="3"><b>Dosagem Medicamento 2</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamento3"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento3','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento3 " id="dosagemMedicamento3" name="dosagemMedicamento3" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento3')}"/>
                                    <label for="descricao"><font size="3"><b>Dosagem Medicamento 3</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamento4"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento4','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento4 " id="dosagemMedicamento4" name="dosagemMedicamento4" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento4')}"/>
                                    <label for="descricao"><font size="3"><b>Dosagem Medicamento 4</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamento5"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento5','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento5 " id="dosagemMedicamento5" name="dosagemMedicamento5" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento5')}"/>
                                     <label for="descricao"><font size="3"><b>Dosagem Medicamento 5</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamento6"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento6','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento6 " id="dosagemMedicamento6" name="dosagemMedicamento6" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento6')}"/>
                                    <label for="descricao"><font size="3"><b>Dosagem Medicamento 6</b></font></label>
                                </td>
                            </tr> 
                        
                           
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="frequenciaAtualCrise"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'frequenciaAtualCrise','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite frequenciaAtualCrise " id="frequenciaAtualCrise" name="frequenciaAtualCrise" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'frequenciaAtualCrise')}"/>
                                    <label for="descricao"><font size="3"><b>Frequencia Atual Crise?</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idadeCriseEpiletpticaAnos"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'idadeCriseEpiletpticaAnos','errors')}">
                                    <i class="fa fa-text-width"></i><input type="number" class="form-control" size="50" placeholder="Digite idadeCriseEpiletpticaAnos " id="idadeCriseEpiletpticaAnos" name="idadeCriseEpiletpticaAnos" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'idadeCriseEpiletpticaAnos')}"/>
                                    <label for="descricao"><font size="3"><b>Idade Crise Epiletptica Anos?</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idadeCriseEpiletpticaMeses"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'idadeCriseEpiletpticaMeses','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite idadeCriseEpiletpticaMeses " id="idadeCriseEpiletpticaMeses" name="idadeCriseEpiletpticaMeses" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'idadeCriseEpiletpticaMeses')}"/>
                                    <label for="descricao"><font size="3"><b>Idade Crise Epiletptica Meses?</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="intervencaoEnfermagem"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'intervencaoEnfermagem','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite intervencaoEnfermagem " id="intervencaoEnfermagem" name="intervencaoEnfermagem" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'intervencaoEnfermagem')}"/>
                                    <label for="descricao"><font size="3"><b>Intervencao Enfermagem</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medicoRequisitante"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'medicoRequisitante','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicorequisitante.list()}" name="medicoRequisitante.id" value="${questionariovideoeeg2?.medicoRequisitante?.id}" noSelection="['':'- Médico Requisitante? -']" ></g:select> <a href="${createLinkTo(dir:'/medicoRequisitante/create')}">* Cadastrar Medicorequisitante</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medicoResponsavel"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'medicoResponsavel','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicoresponsavel.list()}" name="medicoResponsavel.id" value="${questionariovideoeeg2?.medicoResponsavel?.id}" noSelection="['':'- Médico Responsável:? -']" ></g:select> <a href="${createLinkTo(dir:'/medicoResponsavel/create')}">* Cadastrar Medicoresponsavel</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeMedicacao1"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao1','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao1 " id="nomeMedicacao1" name="nomeMedicacao1" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao1')}"/>
                                    <label for="descricao"><font size="3"><b>Nome Medicação 1</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeMedicacao2"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao2','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao2 " id="nomeMedicacao2" name="nomeMedicacao2" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao2')}"/>
                                    <label for="descricao"><font size="3"><b>Nome Medicação 2:</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeMedicacao3"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao3','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao3 " id="nomeMedicacao3" name="nomeMedicacao3" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao3')}"/>
                                    <label for="descricao"><font size="3"><b>Nome Medicação 3</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeMedicacao4"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao4','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao4 " id="nomeMedicacao4" name="nomeMedicacao4" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao4')}"/>
                                    <label for="descricao"><font size="3"><b>Nome Medicação 4</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeMedicacao5"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao5','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao5 " id="nomeMedicacao5" name="nomeMedicacao5" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao5')}"/>
                                    <label for="descricao"><font size="3"><b>Nome Medicação 5</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeMedicacao6"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao6','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao6 " id="nomeMedicacao6" name="nomeMedicacao6" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao6')}"/>
                                    <label for="descricao"><font size="3"><b>Nome Medicação 6</b></font></label>
                                </td>
                            </tr> 
                        
                           
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="qualproblemaGravidezParto"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'qualproblemaGravidezParto','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite qualproblemaGravidezParto " id="qualproblemaGravidezParto" name="qualproblemaGravidezParto" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'qualproblemaGravidezParto')}"/>
                                    <label for="descricao"><font size="3"><b>Qual Problema Gravidez Parto?</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="responsaveltecnica"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'responsaveltecnica','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Responsaveltecnica.list()}" name="responsaveltecnica.id" value="${questionariovideoeeg2?.responsaveltecnica?.id}" noSelection="['':'- Responsável Técnica? -']" ></g:select> <a href="${createLinkTo(dir:'/responsaveltecnica/create')}">* Cadastrar Responsaveltecnica</a>
                                </td>
                            </tr> 

                             <tr class="prop" style="Display:none">
                                <td valign="top" class="name">
                                    <label for="dtExame">Dt Exame *:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dtExame','errors')}">
                                    <input name="dtExame" class="form-control" data-clear-btn-text="Limpar Dt Exame"  data-clear-btn="true" value="${String.format('%td/%<tm/%<tY',questionariovideoeeg2?.dtExame)}" ></input>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons" align="center">
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2" style="padding:10px;margin:10px;size:30px;width:110px;" action="Update" value="Salvar"  /></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2" style="padding:10px;margin:10px;size:30px;width:110px;" action="delete" value="Apagar"  /></span>
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
