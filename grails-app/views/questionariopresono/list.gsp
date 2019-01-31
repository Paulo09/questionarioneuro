

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
        <title>Lista Questionariopresono</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">
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
        <div class="card"><div class="card-image">
		</div>
        <div class="body">
             <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light">${flash.message}</nav>
            </g:if>
            <div class="list">

			    <div class="list">
				<div class="card z-depth-5">
				<div class="card-image"></div>
				<div class="body">

				<div class="list">
					<div class="card-content red lighten-2">
					<h4 align="center" class="white-text">Listar Questionário(s)</h4>
				</div>

                <table class="striped centered grey lighten-2 z-depth-5">
                    <thead>
                        <tr>

                   	        <g:sortableColumn property="id" title="Id" />

                   	        <g:sortableColumn property="jaFumou" title="Ja Fumou" />

                   	        <g:sortableColumn property="fuma" title="Fuma" />

                   	        <g:sortableColumn property="tratamentoApineiaSono" title="Tratamento Apineia Sono" />

                   	        <g:sortableColumn property="voceTem" title="Voce Tem" />

                   	        <g:sortableColumn property="quantoTempodemoraDormir" title="Quanto Tempodemora Dormir" />

                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${questionariopresonoList}" status="i" var="questionariopresono">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                            <td><g:link action="show" id="${questionariopresono.id}">${fieldValue(bean:questionariopresono, field:'id')}</g:link></td>

                            <td>${fieldValue(bean:questionariopresono, field:'jaFumou')}</td>

                            <td>${fieldValue(bean:questionariopresono, field:'fuma')}</td>

                            <td>${fieldValue(bean:questionariopresono, field:'tratamentoApineiaSono')}</td>

                            <td>${fieldValue(bean:questionariopresono, field:'voceTem')}</td>

                            <td>${fieldValue(bean:questionariopresono, field:'quantoTempodemoraDormir')}</td>

                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
			<nav class="nav-extended btn waves-effect waves-light red lighten-2">
				 <ul class="pagination red" align="center"><li class="active"><g:paginate total="${Questionariopresono.count()}"/></ul>
            </nav>
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
