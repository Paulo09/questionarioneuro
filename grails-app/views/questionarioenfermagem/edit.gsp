

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
        <title>Editar Dados Questionarioenfermagem</title>
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
    <body>
        <div class="card z-depth-5"><div class="card-image"></div><div class="body">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${questionarioenfermagem}">
            <div class="errors">
                <g:renderErrors bean="${questionarioenfermagem}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${questionarioenfermagem?.id}" />
                <div class="dialog">
                    <table class="striped left grey lighten-2">
                        <tbody>

                            <div class="card-content red lighten-2 z-depth-5">
                                <h4 align="center" class="white-text"></h4>
                            </div>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipoAssistenciaEnfermagem">Tipo Assistencia Enfermagem:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'tipoAssistenciaEnfermagem','errors')}">
                                    <i class="fa fa-list"></i><g:select id="tipoAssistenciaEnfermagem" name="tipoAssistenciaEnfermagem" from="${questionarioenfermagem.constraints.tipoAssistenciaEnfermagem.inList}" value="${questionarioenfermagem.tipoAssistenciaEnfermagem}" noSelection="['':'- Editar Dados Questionário Enfermagem -']" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="posicaoColeta"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'posicaoColeta','errors')}">
                                    <i class="fa fa-list"></i><g:select id="posicaoColeta" name="posicaoColeta" from="${questionarioenfermagem.constraints.posicaoColeta.inList}" value="${questionarioenfermagem.posicaoColeta}" noSelection="['':'- Posição Coleta: -']" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="roncoColeta"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'roncoColeta','errors')}">
                                    <i class="fa fa-list"></i><g:select id="roncoColeta" name="roncoColeta" from="${questionarioenfermagem.constraints.roncoColeta.inList}" value="${questionarioenfermagem.roncoColeta}" noSelection="['':'- Ronco Coleta:: -']" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="anotacoesEnfermagem">Anotacoes Enfermagem:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'anotacoesEnfermagem','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite anotacoesEnfermagem " id="anotacoesEnfermagem" name="anotacoesEnfermagem" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'anotacoesEnfermagem')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="aoColeta">Ao Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'aoColeta','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite aoColeta " id="aoColeta" name="aoColeta" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'aoColeta')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="epapColeta">Epap Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'epapColeta','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite epapColeta " id="epapColeta" name="epapColeta" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'epapColeta')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="eventosExame">Eventos Exame:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'eventosExame','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite eventosExame " id="eventosExame" name="eventosExame" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'eventosExame')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fugaColeta">Fuga Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'fugaColeta','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite fugaColeta " id="fugaColeta" name="fugaColeta" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'fugaColeta')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hipoColeta">Hipo Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'hipoColeta','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite hipoColeta " id="hipoColeta" name="hipoColeta" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'hipoColeta')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="horaColeta">Hora Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'horaColeta','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite horaColeta " id="horaColeta" name="horaColeta" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'horaColeta')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="interfaceutilizada">Interfaceutilizada:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'interfaceutilizada','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Interfaceutilizada.list()}" name="interfaceutilizada.id" value="${questionarioenfermagem?.interfaceutilizada?.id}" ></g:select> <a href="${createLinkTo(dir:'/interfaceutilizada/create')}">* Cadastrar Interface Utilizada</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ipapColeta">Ipap Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'ipapColeta','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite ipapColeta " id="ipapColeta" name="ipapColeta" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'ipapColeta')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sao2Coleta">Sao2 Coleta:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'sao2Coleta','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite sao2Coleta " id="sao2Coleta" name="sao2Coleta" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'sao2Coleta')}"/>
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
