

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
        <title>Editar Dados Questionariovideoeeg2</title>
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
		  <span class="card-title"><b>E</b>ditar Dados <b>Questionariovideoeeg2</b></span>
		</div>
        <div class="body">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${questionariovideoeeg2}">
            <div class="errors">
                <g:renderErrors bean="${questionariovideoeeg2}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${questionariovideoeeg2?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paisParentes">Pais Parentes:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'paisParentes','errors')}">
                                    <i class="fa fa-list"></i><g:select id="paisParentes" name="paisParentes" from="${questionariovideoeeg2.constraints.paisParentes.inList}" value="${questionariovideoeeg2.paisParentes}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="problemaGravidezParto">Problema Gravidez Parto:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'problemaGravidezParto','errors')}">
                                    <i class="fa fa-list"></i><g:select id="problemaGravidezParto" name="problemaGravidezParto" from="${questionariovideoeeg2.constraints.problemaGravidezParto.inList}" value="${questionariovideoeeg2.problemaGravidezParto}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="frequentaescola">Frequentaescola:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'frequentaescola','errors')}">
                                    <i class="fa fa-list"></i><g:select id="frequentaescola" name="frequentaescola" from="${questionariovideoeeg2.constraints.frequentaescola.inList}" value="${questionariovideoeeg2.frequentaescola}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="convulcaocomFebreInfancia">Convulcaocom Febre Infancia:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'convulcaocomFebreInfancia','errors')}">
                                    <i class="fa fa-list"></i><g:select id="convulcaocomFebreInfancia" name="convulcaocomFebreInfancia" from="${questionariovideoeeg2.constraints.convulcaocomFebreInfancia.inList}" value="${questionariovideoeeg2.convulcaocomFebreInfancia}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anosAndou">Anos Andou:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'anosAndou','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite anosAndou " id="anosAndou" name="anosAndou" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'anosAndou')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anosFalou">Anos Falou:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'anosFalou','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite anosFalou " id="anosFalou" name="anosFalou" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'anosFalou')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="convenio">Convenio:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'convenio','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Convenio.list()}" name="convenio.id" value="${questionariovideoeeg2?.convenio?.id}" ></g:select> <a href="${createLinkTo(dir:'/convenio/create')}">* Cadastrar Convenio</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricaoEventos">Descricao Eventos:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'descricaoEventos','errors')}">
                                    <i class="fa fa-pencil-square-o"></i><g:textArea type="text" placeholder="Digite descricaoEventos " class="form-control" id="descricaoEventos" name="descricaoEventos" value="${fieldValue(bean:questionariovideoeeg2,field:'descricaoEventos')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricaoSintomasCriseTestemunha">Descricao Sintomas Crise Testemunha:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'descricaoSintomasCriseTestemunha','errors')}">
                                    <i class="fa fa-pencil-square-o"></i><g:textArea type="text" placeholder="Digite descricaoSintomasCriseTestemunha " class="form-control" id="descricaoSintomasCriseTestemunha" name="descricaoSintomasCriseTestemunha" value="${fieldValue(bean:questionariovideoeeg2,field:'descricaoSintomasCriseTestemunha')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="diagnosticoEnfermagem">Diagnostico Enfermagem:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'diagnosticoEnfermagem','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite diagnosticoEnfermagem " id="diagnosticoEnfermagem" name="diagnosticoEnfermagem" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'diagnosticoEnfermagem')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamento1">Dosagem Medicamento1:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento1','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento1 " id="dosagemMedicamento1" name="dosagemMedicamento1" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento1')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamento2">Dosagem Medicamento2:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento2','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento2 " id="dosagemMedicamento2" name="dosagemMedicamento2" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento2')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamento3">Dosagem Medicamento3:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento3','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento3 " id="dosagemMedicamento3" name="dosagemMedicamento3" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento3')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamento4">Dosagem Medicamento4:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento4','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento4 " id="dosagemMedicamento4" name="dosagemMedicamento4" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento4')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamento5">Dosagem Medicamento5:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento5','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento5 " id="dosagemMedicamento5" name="dosagemMedicamento5" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento5')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dosagemMedicamento6">Dosagem Medicamento6:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento6','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento6 " id="dosagemMedicamento6" name="dosagemMedicamento6" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento6')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dtExame">Dt Exame:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dtExame','errors')}">
                                    <input name="dtExame" class="form-control" data-clear-btn-text="Limpar Dt Exame"  data-clear-btn="true" value="${String.format('%td/%<tm/%<tY',questionariovideoeeg2?.dtExame)}" ></input>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="frequenciaAtualCrise">Frequencia Atual Crise:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'frequenciaAtualCrise','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite frequenciaAtualCrise " id="frequenciaAtualCrise" name="frequenciaAtualCrise" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'frequenciaAtualCrise')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idadeCriseEpiletpticaAnos">Idade Crise Epiletptica Anos:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'idadeCriseEpiletpticaAnos','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite idadeCriseEpiletpticaAnos " id="idadeCriseEpiletpticaAnos" name="idadeCriseEpiletpticaAnos" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'idadeCriseEpiletpticaAnos')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="idadeCriseEpiletpticaMeses">Idade Crise Epiletptica Meses:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'idadeCriseEpiletpticaMeses','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite idadeCriseEpiletpticaMeses " id="idadeCriseEpiletpticaMeses" name="idadeCriseEpiletpticaMeses" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'idadeCriseEpiletpticaMeses')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="intervencaoEnfermagem">Intervencao Enfermagem:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'intervencaoEnfermagem','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite intervencaoEnfermagem " id="intervencaoEnfermagem" name="intervencaoEnfermagem" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'intervencaoEnfermagem')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medicoRequisitante">Medico Requisitante:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'medicoRequisitante','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicorequisitante.list()}" name="medicoRequisitante.id" value="${questionariovideoeeg2?.medicoRequisitante?.id}" ></g:select> <a href="${createLinkTo(dir:'/medicoRequisitante/create')}">* Cadastrar Medicorequisitante</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medicoResponsavel">Medico Responsavel:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'medicoResponsavel','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicoresponsavel.list()}" name="medicoResponsavel.id" value="${questionariovideoeeg2?.medicoResponsavel?.id}" ></g:select> <a href="${createLinkTo(dir:'/medicoResponsavel/create')}">* Cadastrar Medicoresponsavel</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeMedicacao1">Nome Medicacao1:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao1','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao1 " id="nomeMedicacao1" name="nomeMedicacao1" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao1')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeMedicacao2">Nome Medicacao2:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao2','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao2 " id="nomeMedicacao2" name="nomeMedicacao2" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao2')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeMedicacao3">Nome Medicacao3:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao3','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao3 " id="nomeMedicacao3" name="nomeMedicacao3" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao3')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeMedicacao4">Nome Medicacao4:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao4','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao4 " id="nomeMedicacao4" name="nomeMedicacao4" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao4')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeMedicacao5">Nome Medicacao5:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao5','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao5 " id="nomeMedicacao5" name="nomeMedicacao5" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao5')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nomeMedicacao6">Nome Medicacao6:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao6','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao6 " id="nomeMedicacao6" name="nomeMedicacao6" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao6')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="paciente">Paciente:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'paciente','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Paciente.list()}" name="paciente.id" value="${questionariovideoeeg2?.paciente?.id}" ></g:select> <a href="${createLinkTo(dir:'/paciente/create')}">* Cadastrar Paciente</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="qualproblemaGravidezParto">Qualproblema Gravidez Parto:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'qualproblemaGravidezParto','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite qualproblemaGravidezParto " id="qualproblemaGravidezParto" name="qualproblemaGravidezParto" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'qualproblemaGravidezParto')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="responsaveltecnica">Responsaveltecnica:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'responsaveltecnica','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Responsaveltecnica.list()}" name="responsaveltecnica.id" value="${questionariovideoeeg2?.responsaveltecnica?.id}" ></g:select> <a href="${createLinkTo(dir:'/responsaveltecnica/create')}">* Cadastrar Responsaveltecnica</a>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons" align="center">
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="Update" value="Salvar" onclick="return confirm('Deseja editar os dados?');" /></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="delete" value="Apagar" onclick="return confirm('Deseja apagar os dados?');" /></span>
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
