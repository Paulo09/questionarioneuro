

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
        <title>Editar Dados Pesquisasatisfacao</title>
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
		  <span class="card-title"><b>E</b>ditar Dados <b>Pesquisasatisfacao</b></span>
		</div>
        <div class="body">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${pesquisasatisfacao}">
            <div class="errors">
                <g:renderErrors bean="${pesquisasatisfacao}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${pesquisasatisfacao?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tempoSalaEspera">Tempo Sala Espera:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'tempoSalaEspera','errors')}">
                                    <i class="fa fa-list"></i><g:select id="tempoSalaEspera" name="tempoSalaEspera" from="${pesquisasatisfacao.constraints.tempoSalaEspera.inList}" value="${pesquisasatisfacao.tempoSalaEspera}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tempoEsperaEsperaExamesRealizados">Tempo Espera Espera Exames Realizados:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'tempoEsperaEsperaExamesRealizados','errors')}">
                                    <i class="fa fa-list"></i><g:select id="tempoEsperaEsperaExamesRealizados" name="tempoEsperaEsperaExamesRealizados" from="${pesquisasatisfacao.constraints.tempoEsperaEsperaExamesRealizados.inList}" value="${pesquisasatisfacao.tempoEsperaEsperaExamesRealizados}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tempoEsperaExameResultado">Tempo Espera Exame Resultado:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'tempoEsperaExameResultado','errors')}">
                                    <i class="fa fa-list"></i><g:select id="tempoEsperaExameResultado" name="tempoEsperaExameResultado" from="${pesquisasatisfacao.constraints.tempoEsperaExameResultado.inList}" value="${pesquisasatisfacao.tempoEsperaExameResultado}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="facilidadedeMarcarConsultaAtendido">Facilidadede Marcar Consulta Atendido:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'facilidadedeMarcarConsultaAtendido','errors')}">
                                    <i class="fa fa-list"></i><g:select id="facilidadedeMarcarConsultaAtendido" name="facilidadedeMarcarConsultaAtendido" from="${pesquisasatisfacao.constraints.facilidadedeMarcarConsultaAtendido.inList}" value="${pesquisasatisfacao.facilidadedeMarcarConsultaAtendido}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="horaAtendimento">Hora Atendimento:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'horaAtendimento','errors')}">
                                    <i class="fa fa-list"></i><g:select id="horaAtendimento" name="horaAtendimento" from="${pesquisasatisfacao.constraints.horaAtendimento.inList}" value="${pesquisasatisfacao.horaAtendimento}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="retornoImediatoChamada">Retorno Imediato Chamada:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'retornoImediatoChamada','errors')}">
                                    <i class="fa fa-list"></i><g:select id="retornoImediatoChamada" name="retornoImediatoChamada" from="${pesquisasatisfacao.constraints.retornoImediatoChamada.inList}" value="${pesquisasatisfacao.retornoImediatoChamada}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="explicaQuerSaber">Explica Quer Saber:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'explicaQuerSaber','errors')}">
                                    <i class="fa fa-list"></i><g:select id="explicaQuerSaber" name="explicaQuerSaber" from="${pesquisasatisfacao.constraints.explicaQuerSaber.inList}" value="${pesquisasatisfacao.explicaQuerSaber}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="simpaticaUtil">Simpatica Util:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'simpaticaUtil','errors')}">
                                    <i class="fa fa-list"></i><g:select id="simpaticaUtil" name="simpaticaUtil" from="${pesquisasatisfacao.constraints.simpaticaUtil.inList}" value="${pesquisasatisfacao.simpaticaUtil}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="explicaQuerSaberOutros">Explica Quer Saber Outros:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'explicaQuerSaberOutros','errors')}">
                                    <i class="fa fa-list"></i><g:select id="explicaQuerSaberOutros" name="explicaQuerSaberOutros" from="${pesquisasatisfacao.constraints.explicaQuerSaberOutros.inList}" value="${pesquisasatisfacao.explicaQuerSaberOutros}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="simpaticaUtilOutros">Simpatica Util Outros:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'simpaticaUtilOutros','errors')}">
                                    <i class="fa fa-list"></i><g:select id="simpaticaUtilOutros" name="simpaticaUtilOutros" from="${pesquisasatisfacao.constraints.simpaticaUtilOutros.inList}" value="${pesquisasatisfacao.simpaticaUtilOutros}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="facilidadeOrientar">Facilidade Orientar:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'facilidadeOrientar','errors')}">
                                    <i class="fa fa-list"></i><g:select id="facilidadeOrientar" name="facilidadeOrientar" from="${pesquisasatisfacao.constraints.facilidadeOrientar.inList}" value="${pesquisasatisfacao.facilidadeOrientar}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="confortoSeguranca">Conforto Seguranca:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'confortoSeguranca','errors')}">
                                    <i class="fa fa-list"></i><g:select id="confortoSeguranca" name="confortoSeguranca" from="${pesquisasatisfacao.constraints.confortoSeguranca.inList}" value="${pesquisasatisfacao.confortoSeguranca}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="organizacaoLimpeza">Organizacao Limpeza:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'organizacaoLimpeza','errors')}">
                                    <i class="fa fa-list"></i><g:select id="organizacaoLimpeza" name="organizacaoLimpeza" from="${pesquisasatisfacao.constraints.organizacaoLimpeza.inList}" value="${pesquisasatisfacao.organizacaoLimpeza}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="voceRecomendaria">Voce Recomendaria:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'voceRecomendaria','errors')}">
                                    <i class="fa fa-list"></i><g:select id="voceRecomendaria" name="voceRecomendaria" from="${pesquisasatisfacao.constraints.voceRecomendaria.inList}" value="${pesquisasatisfacao.voceRecomendaria}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="observacao">Observacao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'observacao','errors')}">
                                    <i class="fa fa-pencil-square-o"></i><g:textArea type="text" placeholder="Digite observacao " class="form-control" id="observacao" name="observacao" value="${fieldValue(bean:pesquisasatisfacao,field:'observacao')}"/>
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
