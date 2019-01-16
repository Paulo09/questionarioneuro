

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
        <title>Lista Responsaveltecnica</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light  yellow lighten-2 z-depth-5">  
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="/teste/usuario/menu" target="_self"><font color="#2196f3">Voltar</font></a></li>
			<li class="tab  disabled"><a class="active"><font color="#2196f3">Listar</font></a></li>
			<li class="tab"><a href="create" target="_self"><font color="#2196f3">Novo</font></a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">    
   	<div class="container" style="margin-top:40px;">
    <body>
					<g:if test="${flash.message}">
						<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">${flash.message}</nav>
					</g:if>

					<g:form action="buscar" method="post" class="responsaveltecnica">
						<div class="list">
							<div class="input-field col s8 ">
							<input type="text" id="nome" name="nome" ><br/>
							<label for="icon_telephone">Buscar: Nome Técnica</label>
						</div>
						</div>
						<div class="buttons" align="center">
							<span class="button"><input  class="btn waves-effect waves-light blue lighten-1 z-depth-5" style="padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Buscar"/></span>
						</div><br>
					</g:form>

					<g:if test="${responsaveltecnicaList}">

					<div class="card z-depth-5">
					<div class="card-image"></div>
					<div class="body">
	
					<div class="list">

					    <div class="list">
							<div class="card-content yellow lighten-1">
							<h4 align="center" class="blue-text">Listar Convênio(s)</h4>
						</div>
						
						<table class="striped centered grey lighten-2">
							<thead>
								<tr>
								
									<g:sortableColumn property="id" title="Id" />

									<g:sortableColumn property="nome" title="Nome" />
								
									<g:sortableColumn property="coren" title="Coren" />
								
									<g:sortableColumn property="observacao" title="Observacao" />
								
								</tr>
							</thead>
							<tbody>
							<g:each in="${responsaveltecnicaList}" status="i" var="responsaveltecnica">
								<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
								
									<td><g:link action="show" id="${responsaveltecnica.id}">${fieldValue(bean:responsaveltecnica, field:'id')}</g:link></td>

									<td><g:link action="show" id="${responsaveltecnica.id}">${fieldValue(bean:responsaveltecnica, field:'nome')}</g:link></td>
								
									<td><g:link action="show" id="${responsaveltecnica.id}">${fieldValue(bean:responsaveltecnica, field:'coren')}</g:link></td>
							
									<td><g:link action="show" id="${responsaveltecnica.id}">${fieldValue(bean:responsaveltecnica, field:'observacao')}</g:link></td>
								
								</tr>
							</g:each>
							</tbody>
						</table>
					</div>
					<nav class="nav-extended btn waves-effect waves-light yellow lighten-1">  
						<ul class="pagination" align="center"><li class="active"><g:paginate total="${Responsaveltecnica.count()}"/></ul>
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
