

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
		  
        <title>Dados Pesquisasatisfacao</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light z-depth-5">  
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="/teste/usuario/menu" target="_self">Voltar</a></li>
			<li class="tab  disabled"><a class="active">Listar</a></li>
			<li class="tab"><a href="create" target="_self">Novo</a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">   
	<div class="container" style="margin-top:40px;">
    <body>
        <div class="card z-depth-5"><div class="card-image"></div>		
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light blue lighten-2 z-depth-5">${flash.message}</nav>
            </g:if>
            <div class="dialog">
                <table class="striped left">
                    <tbody>

                        <div class="card-content teal lighten-2">
                                <h4 align="center" class="white-text">Dados Questionário Video - EGG</h4>
                        </div>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Tempo Sala Espera:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'tempoSalaEspera')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Tempo Espera Espera Exames Realizados:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'tempoEsperaEsperaExamesRealizados')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Tempo Espera Exame Resultado:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'tempoEsperaExameResultado')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Facilidadede Marcar Consulta Atendido:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'facilidadedeMarcarConsultaAtendido')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Hora Atendimento:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'horaAtendimento')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Retorno Imediato Chamada:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'retornoImediatoChamada')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Explica Quer Saber:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'explicaQuerSaber')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Simpatica Util:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'simpaticaUtil')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Explica Quer Saber Outros:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'explicaQuerSaberOutros')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Simpatica Util Outros:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'simpaticaUtilOutros')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Facilidade Orientar:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'facilidadeOrientar')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Conforto Seguranca:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'confortoSeguranca')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Organizacao Limpeza:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'organizacaoLimpeza')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Voce Recomendaria:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'voceRecomendaria')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Observacao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:pesquisasatisfacao, field:'observacao')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons" align="center"><br>
                <g:form>
                    <input type="hidden" name="id" value="${pesquisasatisfacao?.id}" />
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light z-depth-5" style="padding:10px;margin:10px;size:30px;width:110px;"  onclick="return confirm('Deseja Editar os dados?');" action="Edit"   value="Editar"/></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light z-depth-5" style="padding:10px;margin:10px;size:30px;width:110px;" onclick="return confirm('Deseja apagar os dados?');" action="Delete" value="Apagar"/></span>
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
