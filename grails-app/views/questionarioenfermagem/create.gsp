

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
		
        <title>Cadastrar Questionarioenfermagem</title>         
    </head>
	<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/create/barraMenu',file:'barraMenu.jpg')});">  
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
    <body style="background-image:url(${createLinkTo(dir:'images/view/create/backgroundPagina',file:'backgroundPagina.jpg')});background-repeat:no-repeat;background-size:cover;">
        <div class="card">
		  <div class="card-image">
		  <img src="${createLinkTo(dir:'images/view/create/backgroundCard',file:'backgroundCard.jpg')}">
		  <span class="card-title"><b>C</b>adastrar <b>Questionarioenfermagem</b></span>
		</div>
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/create/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${questionarioenfermagem}">
            <div class="errors">
                <g:renderErrors bean="${questionarioenfermagem}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'tipoAssistenciaEnfermagem','errors')}">
                                    <i class="fa fa-list"></i><g:select id="tipoAssistenciaEnfermagem" name="tipoAssistenciaEnfermagem" from="${questionarioenfermagem.constraints.tipoAssistenciaEnfermagem.inList}" value="${questionarioenfermagem.tipoAssistenciaEnfermagem}" ></g:select>
									<label for="tipoAssistenciaEnfermagem"><font size="3"><b>Tipo Assistencia Enfermagem</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'posicaoColeta','errors')}">
                                    <i class="fa fa-list"></i><g:select id="posicaoColeta" name="posicaoColeta" from="${questionarioenfermagem.constraints.posicaoColeta.inList}" value="${questionarioenfermagem.posicaoColeta}" ></g:select>
									<label for="posicaoColeta"><font size="3"><b>Posicao Coleta</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'roncoColeta','errors')}">
                                    <i class="fa fa-list"></i><g:select id="roncoColeta" name="roncoColeta" from="${questionarioenfermagem.constraints.roncoColeta.inList}" value="${questionarioenfermagem.roncoColeta}" ></g:select>
									<label for="roncoColeta"><font size="3"><b>Ronco Coleta</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'anotacoesEnfermagem','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite anotacoesEnfermagem " id="anotacoesEnfermagem" name="anotacoesEnfermagem" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'anotacoesEnfermagem')}"/>
									<label for="anotacoesEnfermagem"><font size="3"><b>Anotacoes Enfermagem</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'aoColeta','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite aoColeta " id="aoColeta" name="aoColeta" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'aoColeta')}"/>
									<label for="aoColeta"><font size="3"><b>Ao Coleta</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'epapColeta','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite epapColeta " id="epapColeta" name="epapColeta" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'epapColeta')}"/>
									<label for="epapColeta"><font size="3"><b>Epap Coleta</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'eventosExame','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite eventosExame " id="eventosExame" name="eventosExame" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'eventosExame')}"/>
									<label for="eventosExame"><font size="3"><b>Eventos Exame</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'fugaColeta','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite fugaColeta " id="fugaColeta" name="fugaColeta" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'fugaColeta')}"/>
									<label for="fugaColeta"><font size="3"><b>Fuga Coleta</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'hipoColeta','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite hipoColeta " id="hipoColeta" name="hipoColeta" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'hipoColeta')}"/>
									<label for="hipoColeta"><font size="3"><b>Hipo Coleta</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'horaColeta','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite horaColeta " id="horaColeta" name="horaColeta" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'horaColeta')}"/>
									<label for="horaColeta"><font size="3"><b>Hora Coleta</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'interfaceutilizada','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Interfaceutilizada.list()}" name="interfaceutilizada.id" value="${questionarioenfermagem?.interfaceutilizada?.id}" ></g:select> <a href="${createLinkTo(dir:'/interfaceutilizada/create')}">* Cadastrar Interfaceutilizada</a>
									<label for="interfaceutilizada"><font size="3"><b>Interfaceutilizada</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'ipapColeta','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite ipapColeta " id="ipapColeta" name="ipapColeta" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'ipapColeta')}"/>
									<label for="ipapColeta"><font size="3"><b>Ipap Coleta</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionarioenfermagem,field:'sao2Coleta','errors')}">
                                    <i class="fa fa-text-width"></i><input type="number" class="form-control" size="50" placeholder="Digite sao2Coleta " id="sao2Coleta" name="sao2Coleta" size="50" value="${fieldValue(bean:questionarioenfermagem,field:'sao2Coleta')}"/>
									<label for="sao2Coleta"><font size="3"><b>Sao2 Coleta</b></font></label>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
	            <div class="buttons" align="center">
                    <span class="button"><input  class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/create/botao',file:'botao.jpg')});padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Salvar"/></span>
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
