

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

        <title>Cadastrar Questionariovideoeeg</title>
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
                                <h4 align="center" class="white-text">Questionário Video - EGG</h4>
                            </div>
                            <div class="card-tabs z-depth-5">
                                <ul class="tabs tabs-fixed-width grey lighten-4">&nbsp;<div class="red-text lighten-2"></div>
                                    <li class="tab"><a href="#perguntas1a10"><b><b>Perguntas </b>1 a 10</b></a></li>
                                    <li class="tab"><a href="#perguntas11a21"><b>11 a 21</b></a></li>
                                    <li class="tab"><a href="#perguntas22a29"><b>22 a 29</b></a></li>
                                </ul>
                            </div>
                            <div class="card-content grey lighten-4 z-depth-5">

                                <div id="perguntas1a10">

                                    <tr class="prop">
                                        <td valign="top" class="name"><font size="3"><b></b></font></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'paisParentes','errors')}">
                                            <i class="fa fa-list"></i><g:select id="paisParentes" name="paisParentes" from="${questionariovideoeeg.constraints.paisParentes.inList}" value="${questionariovideoeeg.paisParentes}" noSelection="['':'- Pais Parentes Entre Si? -']"/>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"><font size="3"><b></b></font></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'problemaGravidezParto','errors')}">
                                            <g:select id="problemaGravidezParto" name="problemaGravidezParto" from="${questionariovideoeeg.constraints.problemaGravidezParto.inList}" value="${questionariovideoeeg.problemaGravidezParto}" noSelection="['':'- Problema Gravidez Parto? -']"/>
                                            <label for="problemaGravidezParto"><font size="3"><b></b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'qualproblemaGravidezParto','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite qualproblemaGravidezParto " id="qualproblemaGravidezParto" name="qualproblemaGravidezParto" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'qualproblemaGravidezParto')}"/>
                                            <label for="qualproblemaGravidezParto"><font size="3"><b>Descreva Problema Gravidez Parto</b></font></label>
                                        </td>
                                    </tr>


                                    <tr class="prop">
                                        <td valign="top" class="name"><font size="3"><b></b></font></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'desenvolvimentoNormal','errors')}">
                                            <i class="fa fa-list"></i><g:select id="desenvolvimentoNormal" name="desenvolvimentoNormal" from="${questionariovideoeeg.constraints.desenvolvimentoNormal.inList}" value="${questionariovideoeeg.desenvolvimentoNormal}" noSelection="['':'- Desenvolvimento Normal? -']"  ></g:select>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"><font size="3"><b></b></font></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'convulcaoInfancia','errors')}">
                                            <i class="fa fa-list"></i><g:select id="convulcaoInfancia" name="convulcaoInfancia" from="${questionariovideoeeg.constraints.convulcaoInfancia.inList}" value="${questionariovideoeeg.convulcaoInfancia}" noSelection="['':'- Convulção na Infância? -']" ></g:select>
                                        </td>
                                    </tr>


                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'anosAndou','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite anosAndou " id="anosAndou" name="anosAndou" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'anosAndou')}"/>
                                            <label for="anosAndou"><font size="3"><b>Anos Andou</b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'anosFalou','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite anosFalou " id="anosFalou" name="anosFalou" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'anosFalou')}"/>
                                            <label for="anosFalou"><font size="3"><b>Anos Falou</b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'convenio','errors')}">
                                            <g:select class="form-control" optionKey="id" from="${Convenio.list()}" name="convenio.id" value="${questionariovideoeeg?.convenio?.id}" noSelection="['':'- Convênio -']"></g:select> <a href="${createLinkTo(dir:'/convenio/create')}">* Cadastrar Convenio</a>
                                            <label for="convenio"><font size="3"><b></b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'crisesepileticasIdadeAno','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite crisesepileticasIdadeAno " id="crisesepileticasIdadeAno" name="crisesepileticasIdadeAno" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'crisesepileticasIdadeAno')}"/>
                                            <label for="crisesepileticasIdadeAno"><font size="3"><b>Crisesepileticas Idade Ano</b></font></label>
                                        </td>
                                    </tr>
                            </div>

                            <div id="perguntas11a21">

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'crisesepileticasIdadeMeses','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite crisesepileticasIdadeMeses " id="crisesepileticasIdadeMeses" name="crisesepileticasIdadeMeses" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'crisesepileticasIdadeMeses')}"/>
                                            <label for="crisesepileticasIdadeMeses"><font size="3"><b>Crisesepileticas Idade Meses</b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'descrevaCriseSinal','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite descrevaCriseSinal " id="descrevaCriseSinal" name="descrevaCriseSinal" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'descrevaCriseSinal')}"/>
                                            <label for="descrevaCriseSinal"><font size="3"><b>Descreva Crise Sinal</b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'dosagemMedicamentoCrise','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamentoCrise " id="dosagemMedicamentoCrise" name="dosagemMedicamentoCrise" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'dosagemMedicamentoCrise')}"/>
                                            <label for="dosagemMedicamentoCrise"><font size="3"><b>Dosagem Medicamento Crise</b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'dosagemMedicamentoDoenca','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite dosagemMedicamentoDoenca " id="dosagemMedicamentoDoenca" name="dosagemMedicamentoDoenca" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'dosagemMedicamentoDoenca')}"/>
                                            <label for="dosagemMedicamentoDoenca"><font size="3"><b>Dosagem Medicamento Doenca</b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'frequenciaCriseAno','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite frequenciaCriseAno " id="frequenciaCriseAno" name="frequenciaCriseAno" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'frequenciaCriseAno')}"/>
                                            <label for="frequenciaCriseAno"><font size="3"><b>Frequencia Crise Ano</b></font></label>
                                        </td>
                                    </tr>

                                    <!--<tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'frequenciaCriseDia','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite frequenciaCriseDia " id="frequenciaCriseDia" name="frequenciaCriseDia" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'frequenciaCriseDia')}"/>
                                            <label for="frequenciaCriseDia"><font size="3"><b>Frequencia Crise Dia</b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'frequenciaCriseMes','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite frequenciaCriseMes " id="frequenciaCriseMes" name="frequenciaCriseMes" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'frequenciaCriseMes')}"/>
                                            <label for="frequenciaCriseMes"><font size="3"><b>Frequencia Crise Mes</b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'frequenciaCriseSemana','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite frequenciaCriseSemana " id="frequenciaCriseSemana" name="frequenciaCriseSemana" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'frequenciaCriseSemana')}"/>
                                            <label for="frequenciaCriseSemana"><font size="3"><b>Frequencia Crise Semana</b></font></label>
                                        </td>
                                    </tr>-->
                            </div>

                            <div id="perguntas22a29">

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'medicoRequisitante','errors')}">
                                            <g:select class="form-control" optionKey="id" from="${Medicorequisitante.list()}" name="medicoRequisitante.id" value="${questionariovideoeeg?.medicoRequisitante?.id}" noSelection="['':'- Médico Requisitante -']" ></g:select> <a href="${createLinkTo(dir:'/medicorequisitante/create')}">* Cadastrar Medicorequisitante</a>
                                            <label for="medicoRequisitante"><font size="3"><b></b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'medicoResponsavel','errors')}">
                                            <g:select class="form-control" optionKey="id" from="${Medicoresponsavel.list()}" name="medicoResponsavel.id" value="${questionariovideoeeg?.medicoResponsavel?.id}" noSelection="['':'- Médico Responsável -']" ></g:select> <a href="${createLinkTo(dir:'/medicoresponsavel/create')}">* Cadastrar Medicoresponsavel</a>
                                            <label for="medicoResponsavel"><font size="3"><b></b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'nomeRemedioCrise','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeRemedioCrise " id="nomeRemedioCrise" name="nomeRemedioCrise" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'nomeRemedioCrise')}"/>
                                            <label for="nomeRemedioCrise"><font size="3"><b>Nome Remedio Crise</b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'nomeRemedioDoenca','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nomeRemedioDoenca " id="nomeRemedioDoenca" name="nomeRemedioDoenca" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'nomeRemedioDoenca')}"/>
                                            <label for="nomeRemedioDoenca"><font size="3"><b>Nome Remedio Doenca</b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'paciente','errors')}">
                                            <g:select class="form-control" optionKey="id" from="${Paciente.list()}" name="paciente.id" value="${questionariovideoeeg?.paciente?.id}" noSelection="['':'- Paciente -']" ></g:select> <a href="${createLinkTo(dir:'/paciente/create')}">* Cadastrar Paciente</a>
                                            <label for="paciente"><font size="3"><b></b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'pacienteDesenvolvimentoNormal','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite pacienteDesenvolvimentoNormal " id="pacienteDesenvolvimentoNormal" name="pacienteDesenvolvimentoNormal" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'pacienteDesenvolvimentoNormal')}"/>
                                            <label for="pacienteDesenvolvimentoNormal"><font size="3"><b>Paciente Desenvolvimento Normal</b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'qualMedicacaoTomouCrise','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite qualMedicacaoTomouCrise " id="qualMedicacaoTomouCrise" name="qualMedicacaoTomouCrise" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'qualMedicacaoTomouCrise')}"/>
                                            <label for="qualMedicacaoTomouCrise"><font size="3"><b>Qual Medicacao Tomou Crise</b></font></label>
                                        </td>
                                    </tr>

                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'qualMedicacaoTomouDoenca','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite qualMedicacaoTomouDoenca " id="qualMedicacaoTomouDoenca" name="qualMedicacaoTomouDoenca" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'qualMedicacaoTomouDoenca')}"/>
                                            <label for="qualMedicacaoTomouDoenca"><font size="3"><b>Qual Medicacao Tomou Doenca</b></font></label>
                                        </td>
                                    </tr>



                                    <tr class="prop">
                                        <td valign="top" class="name"></td>
                                        <td valign="top" class="value ${hasErrors(bean:questionariovideoeeg,field:'quantasConvulsoes','errors')}">
                                            <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite quantasConvulsoes " id="quantasConvulsoes" name="quantasConvulsoes" size="50" value="${fieldValue(bean:questionariovideoeeg,field:'quantasConvulsoes')}"/>
                                            <label for="quantasConvulsoes"><font size="3"><b>Quantas Convulsoes</b></font></label>
                                        </td>
                                    </tr><br>
                                     <div class="buttons" align="center">
                                        <span class="button"><input  class="btn waves-effect waves-light red lighten-2 z-depth-5" style="padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Salvar"/></span>
                                    </div><br>
                            </div>

                        </tbody>
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
