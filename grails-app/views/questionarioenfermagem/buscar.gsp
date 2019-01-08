

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
        <title>Lista Questionarioenfermagem</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light red lighten-2">  
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="#test1">Sair</a></li>
			<li class="tab"><a class="active" href="#test2">Menu</a></li>
			<li class="tab disabled"><a href="#test3">Buscar</a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">    
   	<div class="container" style="margin-top:40px;">
    <body>

	    <g:form action="buscar" method="post" class="questionarioenfermagem">
			<div class="list">
				<div class="input-field col s8 ">
				<input type="text" placeholder="Buscar: Questionario Enfermagem" id="nome" name="nome" ><br/>
			</div>
			<div class="buttons" align="center">
				<span class="button"><input  class="red lighten-2 btn waves-effect waves-light z-depth-5" type="submit" style="padding:10px;margin:10px;size:30px;width:110px;" value="Buscar"/></span>
			</div><br>
		</g:form>

		<g:if test="${questionarioenfermagemList}">

				<div class="card z-depth-5"><div class="card-image"></div>
				<div class="body">
					<g:if test="!${flash.message}">
						<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">${flash.message}</nav>
					</g:if>
					<div class="list">
						<table class="striped centered grey lighten-2">
							<thead>
								<tr>
								
									<g:sortableColumn property="id" title="Id" />
								
									<g:sortableColumn property="tipoAssistenciaEnfermagem" title="Tipo Assistencia Enfermagem" />
								
									<g:sortableColumn property="posicaoColeta" title="Posicao Coleta" />
								
									<g:sortableColumn property="roncoColeta" title="Ronco Coleta" />
								
									<g:sortableColumn property="anotacoesEnfermagem" title="Anotacoes Enfermagem" />
								
									<g:sortableColumn property="aoColeta" title="Ao Coleta" />
								
								</tr>
							</thead>
							<tbody>
							<g:each in="${questionarioenfermagemList}" status="i" var="questionarioenfermagem">
								<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
								
									<td><g:link action="show" id="${questionarioenfermagem.id}">${fieldValue(bean:questionarioenfermagem, field:'id')}</g:link></td>
								
									<td>${fieldValue(bean:questionarioenfermagem, field:'tipoAssistenciaEnfermagem')}</td>
								
									<td>${fieldValue(bean:questionarioenfermagem, field:'posicaoColeta')}</td>
								
									<td>${fieldValue(bean:questionarioenfermagem, field:'roncoColeta')}</td>
								
									<td>${fieldValue(bean:questionarioenfermagem, field:'anotacoesEnfermagem')}</td>
								
									<td>${fieldValue(bean:questionarioenfermagem, field:'aoColeta')}</td>
								
								</tr>
							</g:each>
							</tbody>
						</table>
					</div>
					<nav class="nav-extended btn waves-effect waves-light red lighten-2">  
						<ul class="pagination" align="center"><li class="active red lighten-2"><g:paginate total="${Questionarioenfermagem.count()}"/></ul>
					</nav>
				</div>
		   </g:if>	
		   <!--Import jQuery before materialize.js-->
		   <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		   <script type="text/javascript" src="${createLinkTo(dir:'js',file:'materialize.js')}"></script>
		   <script>
			  $('.datepicker').pickadate({format: 'dd/mm/yy',selectMonths: true,selectYears: 15,today: 'Hoje',clear: 'Limpar',close:'Ok',closeOnSelect: false});
			  $(document).ready(function() {$('select').material_select();});
		   </script>
    </body>
</html>
