

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
		  
        <title>Dados Questionarioenfermagem</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/show/barraMenu',file:'barraMenu.jpg')});">  
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
    <body style="background-image:url(${createLinkTo(dir:'images/view/show/backgroundPagina',file:'backgroundPagina.jpg')});background-repeat:no-repeat;background-size:cover;">
        <div class="card">
		  <div class="card-image">
		  <img src="${createLinkTo(dir:'images/view/show/backgroundCard',file:'backgroundCard.jpg')}">
		  <span class="card-title"><b>D</b>ados <b>Questionarioenfermagem</b></span>
		</div>		
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/show/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <div class="dialog">
                <table class="striped centered">
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Tipo Assistencia Enfermagem:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem, field:'tipoAssistenciaEnfermagem')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Posicao Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem, field:'posicaoColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Ronco Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem, field:'roncoColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Anotacoes Enfermagem:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem, field:'anotacoesEnfermagem')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Ao Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem, field:'aoColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Epap Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem, field:'epapColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Eventos Exame:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem, field:'eventosExame')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Fuga Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem, field:'fugaColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Hipo Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem, field:'hipoColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Hora Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem, field:'horaColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Interfaceutilizada:</td>
                            
                            <td valign="top" class="value"><g:link controller="interfaceutilizada" action="show" id="${questionarioenfermagem?.interfaceutilizada?.id}">${questionarioenfermagem?.interfaceutilizada?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Ipap Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem, field:'ipapColeta')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Sao2 Coleta:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionarioenfermagem, field:'sao2Coleta')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons" align="center"><br>
                <g:form>
                    <input type="hidden" name="id" value="${questionarioenfermagem?.id}" />
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/show/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;"  onclick="return confirm('Deseja Editar os dados?');" action="Edit"   value="Editar"/></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/show/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" onclick="return confirm('Deseja apagar os dados?');" action="Delete" value="Apagar"/></span>
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
