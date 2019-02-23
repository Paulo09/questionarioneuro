

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
        <title>Lista Paciente</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light  blue lighten-2 z-depth-5">
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

		<g:form action="buscar" method="post" class="paciente">
			<div class="list">
				<div class="input-field col s8 ">
				<input type="text" placeholder="Buscar Paciente" id="nome" name="nome" ><br/>
			</div>
			<div class="buttons" align="center">
				<span class="button"><input  class="btn waves-effect waves-light blue lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/create/botao',file:'botao.jpg')});padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Buscar"/></span>
			</div><br>
		</g:form>

        <div class="card">
		  <div class="card-image"></div>
        <div class="body">
             <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light red lighten-2">${flash.message}</nav>
            </g:if>

			  	<div class="list">
			    <div class="card-content blue lighten-2 z-depth-5">
					<h4 align="center" class="white-text">Listar Paciente(s)</h4>
				</div>

                <table class="striped centered grey lighten-2 z-depth-5">
                    <thead>
                        <tr>

                   	        <g:sortableColumn property="id" title="Id" />

							 <g:sortableColumn property="nome" title="Nome" />

                   	        <g:sortableColumn property="cpf" title="Cpf" />

                   	        <g:sortableColumn property="dataNascimento" title="Lista Exames" />
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${pacienteList}" status="i" var="paciente">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                            <td><g:link action="show" id="${paciente.id}">${fieldValue(bean:paciente, field:'id')}</g:link></td>

                            <td><g:link action="show" id="${paciente.id}">${fieldValue(bean:paciente, field:'nome')}</g:link></td>

                            <td><g:link action="show" id="${paciente.id}">${fieldValue(bean:paciente, field:'cpf')}</g:link></td>

                            <!--<td><g:link action="show" id="${paciente.id}">${fieldValue(bean:paciente, field:'dataNascimento')}</g:link></td>-->

							<td><a class = "btn dropdown-button blue lighten-2 z-depth-5" href = "#" data-activates = "dropdown">Exames<i class = "mdi-navigation-arrow-drop-down right"></i></a></td>

							<ul id = "dropdown" class = "dropdown-content">
								<li><a href = "/teste/questionariovideoeeg2/create/${paciente.id}">Questionário Vídeo EEG</a></li>
								<li class = "divider"></li>
								<li><a href = "/teste/questionarioenfermagem/create/${paciente.id}">Questionário Enfermagem</a></li>
								<li class = "divider"></li>
								<li><a href = "/teste/questionariopresono/create/${paciente.id}">Questionário Pré-Sono</a></li>
								<li class = "divider"></li>
								<li><a href = "/teste/questionariopossono/create/${paciente.id}">Questionário Pós-Sono</a></li>
								<li class = "divider"></li>
								<li><a href = "#">Sair</a><i class = "glyphicon glyphicon-cloud tiny"></i></li>
							</ul>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
			<nav class="nav-extended btn waves-effect waves-light blue lighten-2">
				 <ul class="pagination" align="center"><li class="active"><g:paginate total="${Paciente.count()}"/></ul>
            </nav>
        </div>
		   <!--Import jQuery before materialize.js-->
		   <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
		   <script type="text/javascript" src="${createLinkTo(dir:'js',file:'materialize.js')}"></script>
    </body>
</html>
