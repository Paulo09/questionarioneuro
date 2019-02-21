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

        <title>Cadastrar Questionário Vídeo EEG</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="/teste/questionariovideoeeg2/list" target="_self">Voltar</a></li>
			<li class="tab"><a class="active">Novo</a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">
	<div class="container" style="margin-top:40px;">
    <body class="white lighten-2">
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${questionariovideoeeg}">
            <div class="errors">
                <g:renderErrors bean="${questionariovideoeeg}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >

                    <tbody >

                        <div class="card">
                            <div class="card-content red lighten-2 z-depth-5">
                                <h4 align="center" class="white-text">Questionário Vídeo - EGG</h4>
                            </div>
                            <div class="card-tabs z-depth-5">
                                <ul class="tabs tabs-fixed-width grey lighten-4">&nbsp;<div class="red-text lighten-2"></div>
                                    <li class="tab"><a href="#perguntas1a10"><b><b>Perguntas </b>1 a 10</b></a></li>
                                    <li class="tab"><a href="#perguntas11a21"><b>11 a 21</b></a></li>
                                    <li class="tab"><a href="#perguntas22a29"><b>22 a 29</b></a></li>
                                </ul>
                            </div>
                            <div class="card-content grey lighten-4">

                        <div id="perguntas1a10">

                                <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'paciente','errors')}">
                                            <g:select class="form-control" optionKey="id" from="${Paciente.list()}" name="paciente.id" value="${questionariovideoeeg2?.paciente?.id}" noSelection="['':'- Paciente -']" ></g:select> <a href="${createLinkTo(dir:'/paciente/create')}">* Cadastrar Paciente</a>
                                            <label for="paciente"><font size="3"><b></b></font></label>
                                        </td>
                                </tr>

                                <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'medicoRequisitante','errors')}">
                                            <g:select class="form-control" optionKey="id" from="${Medicorequisitante.list()}" name="medicoRequisitante.id" value="${questionariovideoeeg2?.medicoRequisitante?.id}" noSelection="['':'- Médico Requisitante -']"></g:select> <a href="${createLinkTo(dir:'/medicoRequisitante/create')}">* Cadastrar Medicorequisitante</a>
                                            <label for="medicoRequisitante"><font size="3"><b></b></font></label>
                                        </td>
                                </tr>

                                <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'medicoResponsavel','errors')}">
                                            <g:select class="form-control" optionKey="id" from="${Medicoresponsavel.list()}" name="medicoResponsavel.id" value="${questionariovideoeeg2?.medicoResponsavel?.id}" noSelection="['':'- Médico Responsável -']" ></g:select> <a href="${createLinkTo(dir:'/medicoResponsavel/create')}">* Cadastrar Medicoresponsavel</a>
                                            <label for="medicoResponsavel"><font size="3"><b></b></font></label>
                                        </td>
                                </tr>

                                <tr class="prop">
                                    <td valign="top" class="name"></td>
                                    <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'responsaveltecnica','errors')}">
                                        <g:select class="form-control" optionKey="id" from="${Responsaveltecnica.list()}" name="responsaveltecnica.id" value="${questionariovideoeeg2?.responsaveltecnica?.id}" noSelection="['':'- Responsável Técnica -']" ></g:select> <a href="${createLinkTo(dir:'/responsaveltecnica/create')}">* Cadastrar Responsaveltecnica</a>
                                        <label for="responsaveltecnica"><font size="3"><b></b></font></label>
                                    </td>
                                </tr>

                                <tr class="prop">
                                    <td valign="top" class="name"></td>
                                    <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'convenio','errors')}">
                                        <g:select class="form-control" optionKey="id" from="${Convenio.list()}" name="convenio.id" value="${questionariovideoeeg2?.convenio?.id}" noSelection="['':'- Convênio -']" ></g:select> <a href="${createLinkTo(dir:'/convenio/create')}">* Cadastrar Convenio</a>
                                        <label for="convenio"><font size="3"></font></label>
                                    </td>
                                </tr>


                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'paisParentes','errors')}">
                                    <i class="fa fa-list"></i><g:select id="paisParentes" name="paisParentes" from="${questionariovideoeeg2.constraints.paisParentes.inList}" value="${questionariovideoeeg2.paisParentes}" noSelection="['':'- Pais Parentes -']" ></g:select>
									<label for="paisParentes"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'problemaGravidezParto','errors')}">
                                    <i class="fa fa-list"></i><g:select id="problemaGravidezParto" name="problemaGravidezParto" from="${questionariovideoeeg2.constraints.problemaGravidezParto.inList}" value="${questionariovideoeeg2.problemaGravidezParto}" noSelection="['':'- Problema Gravidez Parto -']" ></g:select>
									<label for="problemaGravidezParto"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'frequentaescola','errors')}">
                                    <i class="fa fa-list"></i><g:select id="frequentaescola" name="frequentaescola" from="${questionariovideoeeg2.constraints.frequentaescola.inList}" value="${questionariovideoeeg2.frequentaescola}" noSelection="['':'- Frequenta Escola -']" ></g:select>
									<label for="frequentaescola"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'convulcaocomFebreInfancia','errors')}">
                                    <i class="fa fa-list"></i><g:select id="convulcaocomFebreInfancia" name="convulcaocomFebreInfancia" from="${questionariovideoeeg2.constraints.convulcaocomFebreInfancia.inList}" value="${questionariovideoeeg2.convulcaocomFebreInfancia}" noSelection="['':'- Convulção com Febre na Infância -']"></g:select>
									<label for="convulcaocomFebreInfancia"><font size="3"><b></b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'anosAndou','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite anosAndou " id="anosAndou" name="anosAndou" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'anosAndou')}"/>
									<label for="anosAndou"><font size="3"><b>Anos Andou</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'anosFalou','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite anosFalou " id="anosFalou" name="anosFalou" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'anosFalou')}"/>
									<label for="anosFalou"><font size="3"><b>Anos Falou</b></font></label>
                                </td>
                            </tr>



                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'descricaoSintomasCriseTestemunha','errors')}">
                                    <i class="fa fa-pencil-square-o"></i><g:textArea type="text" placeholder="Digite descricaoSintomasCriseTestemunha " class="materialize-textarea" id="descricaoSintomasCriseTestemunha" name="descricaoSintomasCriseTestemunha" value="${fieldValue(bean:questionariovideoeeg2,field:'descricaoSintomasCriseTestemunha')}"/>
									<label for="descricaoSintomasCriseTestemunha"><font size="3"><b>Descricao Sintomas Crise Testemunha</b></font></label>
                                </td>
                            </tr>


                    </div><!-- Fim 1 -->

                    <div id="perguntas11a21">

                            <tr class="prop" style="Display:none">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dtExame','errors')}">
                                    <input name="dtExame" class="form-control" data-clear-btn-text="Limpar Dt Exame"  data-clear-btn="true" value="${String.format('%td/%<tm/%<tY',questionariovideoeeg2?.dtExame)}" ></input>
									<label for="dtExame"><font size="3"><b>Dt Exame</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'frequenciaAtualCrise','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite frequenciaAtualCrise " id="frequenciaAtualCrise" name="frequenciaAtualCrise" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'frequenciaAtualCrise')}"/>
									<label for="frequenciaAtualCrise"><font size="3"><b>Frequencia Atual Crise</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'idadeCriseEpiletpticaAnos','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite idadeCriseEpiletpticaAnos " id="idadeCriseEpiletpticaAnos" name="idadeCriseEpiletpticaAnos" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'idadeCriseEpiletpticaAnos')}"/>
									<label for="idadeCriseEpiletpticaAnos"><font size="3"><b>Idade Crise Epiletptica Anos</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'idadeCriseEpiletpticaMeses','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite idadeCriseEpiletpticaMeses " id="idadeCriseEpiletpticaMeses" name="idadeCriseEpiletpticaMeses" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'idadeCriseEpiletpticaMeses')}"/>
									<label for="idadeCriseEpiletpticaMeses"><font size="3"><b>Idade Crise Epiletptica Meses</b></font></label>
                                </td>
                            </tr>


                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'qualproblemaGravidezParto','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite qualproblemaGravidezParto " id="qualproblemaGravidezParto" name="qualproblemaGravidezParto" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'qualproblemaGravidezParto')}"/>
									<label for="qualproblemaGravidezParto"><font size="3"><b>Qualproblema Gravidez Parto</b></font></label>
                                </td>
                            </tr>

                              <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao1','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao1 " id="nomeMedicacao1" name="nomeMedicacao1" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao1')}"/>
									<label for="nomeMedicacao1"><font size="3"><b>Nome Medicacao1</b></font></label>
                                </td>
                            </tr>
                    </div><!-- Fim 2 -->

                    <div id="perguntas22a29">

                             <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento1','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento1 " id="dosagemMedicamento1" name="dosagemMedicamento1" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento1')}"/>
									<label for="dosagemMedicamento1"><font size="3"><b>Dosagem Medicamento1</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao2','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao2 " id="nomeMedicacao2" name="nomeMedicacao2" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao2')}"/>
									<label for="nomeMedicacao2"><font size="3"><b>Nome Medicacao2</b></font></label>
                                </td>
                            </tr>
                             <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento2','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento2 " id="dosagemMedicamento2" name="dosagemMedicamento2" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento2')}"/>
									<label for="dosagemMedicamento2"><font size="3"><b>Dosagem Medicamento2</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao3','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao3 " id="nomeMedicacao3" name="nomeMedicacao3" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao3')}"/>
									<label for="nomeMedicacao3"><font size="3"><b>Nome Medicacao3</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao4','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao4 " id="nomeMedicacao4" name="nomeMedicacao4" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao4')}"/>
									<label for="nomeMedicacao4"><font size="3"><b>Nome Medicacao4</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao5','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao5 " id="nomeMedicacao5" name="nomeMedicacao5" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao5')}"/>
									<label for="nomeMedicacao5"><font size="3"><b>Nome Medicacao5</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'nomeMedicacao6','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeMedicacao6 " id="nomeMedicacao6" name="nomeMedicacao6" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'nomeMedicacao6')}"/>
									<label for="nomeMedicacao6"><font size="3"><b>Nome Medicacao6</b></font></label>
                                </td>
                            </tr>


                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento3','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento3 " id="dosagemMedicamento3" name="dosagemMedicamento3" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento3')}"/>
									<label for="dosagemMedicamento3"><font size="3"><b>Dosagem Medicamento3</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento4','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento4 " id="dosagemMedicamento4" name="dosagemMedicamento4" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento4')}"/>
									<label for="dosagemMedicamento4"><font size="3"><b>Dosagem Medicamento4</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento5','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento5 " id="dosagemMedicamento5" name="dosagemMedicamento5" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento5')}"/>
									<label for="dosagemMedicamento5"><font size="3"><b>Dosagem Medicamento5</b></font></label>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'dosagemMedicamento6','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamento6 " id="dosagemMedicamento6" name="dosagemMedicamento6" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'dosagemMedicamento6')}"/>
									<label for="dosagemMedicamento6"><font size="3"><b>Dosagem Medicamento6</b></font></label>
                                </td>
                            </tr>

                             <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'diagnosticoEnfermagem','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite diagnosticoEnfermagem " id="diagnosticoEnfermagem" name="diagnosticoEnfermagem" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'diagnosticoEnfermagem')}"/>
									<label for="diagnosticoEnfermagem"><font size="3"><b>Diagnostico Enfermagem</b></font></label>
                                </td>
                            </tr>

                             <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'intervencaoEnfermagem','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite intervencaoEnfermagem " id="intervencaoEnfermagem" name="intervencaoEnfermagem" size="50" value="${fieldValue(bean:questionariovideoeeg2,field:'intervencaoEnfermagem')}"/>
									<label for="intervencaoEnfermagem"><font size="3"><b>Intervenções Enfermagem</b></font></label>
                                </td>
                            </tr>


                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg2,field:'descricaoEventos','errors')}">
                                    <i class="fa fa-pencil-square-o"></i><g:textArea type="text" placeholder="Digite descricaoEventos " class="materialize-textarea" id="descricaoEventos" name="descricaoEventos" value="${fieldValue(bean:questionariovideoeeg2,field:'descricaoEventos')}"/>
									<label for="descricaoEventos"><font size="3"><b>Descrição Eventos</b></font></label>
                                </td>
                            </tr>

                            <div class="buttons" align="center">
                                <span class="button"><input  class="btn waves-effect waves-light red lighten-2 z-depth-5" style="padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Salvar"/></span>
                            </div><br>


                        </tbody>
                    </table>
                </div>

             </div><!-- Fim 3 -->
            </g:form>
        </div>
		   <!--Import jQuery before materialize.js-->
	       <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	       <script type="text/javascript" src="${createLinkTo(dir:'js',file:'materialize.js')}"></script>
		   <script>
			  $('.datepicker').pickadate({format: 'dd/mm/yy',selectMonths: true,selectYears: 15,today: 'Hoje',clear: 'Limpar',close:'Ok',closeOnSelect: false});
			  $(document).ready(function() {$('select').material_select();});
		   </script>
            <script>
			    function Mudarestado(el) {
                var display = document.getElementById(el).style.visibility;
                if(display == "hidden")document.getElementById(el).style.visibility = 'visible';
                else document.getElementById(el).style.visibility = 'hidden';}
            </script>
            <script>
                $(document).ready(function(){$('.tabs').tabs();});
            </script>
    </body>
</html>
