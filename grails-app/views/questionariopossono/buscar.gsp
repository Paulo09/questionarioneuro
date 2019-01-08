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
        <title>Lista Questionariopossono</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">  
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
             <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">${flash.message}</nav>
            </g:if>

			<g:form action="buscar" method="post" class="questionariopossono">
				<div class="list">
					<div class="input-field col s8 ">
					<input type="text" id="nome" name="nome" ><br/>
					<label for="icon_telephone">Buscar: Id questionário Pós-Sono</label>
				</div>
				</div>
				<div class="buttons" align="center">
					<span class="button"><input  class="btn waves-effect waves-light red lighten-2 z-depth-5" style="padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Buscar"/></span>
				</div><br>
			</g:form>

			<g:if test="${questionariopossonoList}">

						<div class="list">
							<div class="card z-depth-5">
							<div class="card-image"></div>
							<div class="body">

							<div class="list">
								<div class="card-content red lighten-2">
								<h4 align="center" class="white-text">Listar Convênio(s)</h4>
							</div>
					<div class="list">
						<table class="striped left grey lighten-2 z-depth-5">
							<thead> 
								<tr>
								
									<g:sortableColumn property="id" title="Id" />
								
									<g:sortableColumn property="quantoTempodemorouDormir" title="Quanto Tempodemorou Dormir" />
								
									<g:sortableColumn property="finalExameComoAcordou" title="Final Exame Como Acordou" />
								
									<g:sortableColumn property="comoAcordouFinalExame" title="Como Acordou Final Exame" />
								
									<g:sortableColumn property="comentario" title="Comentario" />
								
									<g:sortableColumn property="despertouDuranteExame" title="Despertou Durante Exame" />
								
								</tr>
							</thead>
							<tbody>
							<g:each in="${questionariopossonoList}" status="i" var="questionariopossono">
								<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
								
									<td><g:link action="show" id="${questionariopossono.id}">${fieldValue(bean:questionariopossono, field:'id')}</g:link></td>
								
									<td>${fieldValue(bean:questionariopossono, field:'quantoTempodemorouDormir')}</td>
								
									<td>${fieldValue(bean:questionariopossono, field:'finalExameComoAcordou')}</td>
								
									<td>${fieldValue(bean:questionariopossono, field:'comoAcordouFinalExame')}</td>
								
									<td>${fieldValue(bean:questionariopossono, field:'comentario')}</td>
								
									<td>${fieldValue(bean:questionariopossono, field:'despertouDuranteExame')}</td>
								
								</tr>
							</g:each>
							</tbody>
						</table>
					</div>
					<nav class="nav-extended btn waves-effect waves-light  red lighten-2">  
						<ul class="pagination"><li class="active"><g:paginate total="${Questionariopossono.count()}"/></ul>
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
