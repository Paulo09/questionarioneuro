

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
        <title>Lista Quarto</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light  teal lighten-2 z-depth-5">  
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
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light">${flash.message}</nav>
            </g:if>
            <div class="list">

				<g:form action="buscar" method="post" class="quartoList">
						<div class="list">
							<div class="input-field col s8 ">
							<input type="text" id="nome" name="nome" ><br/>
							<label for="icon_telephone">Buscar: Id questionário Video EEG</label>
						</div>
						</div>
						<div class="buttons" align="center">
							<span class="button"><input  class="btn waves-effect waves-light teal lighten-2 z-depth-5" style="padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Buscar"/></span>
						</div><br>
				</g:form>

            	<div class="list">
				<div class="card z-depth-5">
				<div class="card-image"></div>
				<div class="body">

				<div class="list">
					<div class="card-content teal lighten-2">
					<h4 align="center" class="white-text">Listar Questionário(s)</h4>
				</div>

                <table class="striped left grey lighten-2">
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />

							<g:sortableColumn property="nome" title="Nome" />   

							<g:sortableColumn property="numero" title="Numero" />
                        
                   	        <g:sortableColumn property="descricao" title="Descricao" />
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${quartoList}" status="i" var="quarto">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${quarto.id}">${fieldValue(bean:quarto, field:'id')}</g:link></td>

							<td><g:link action="show" id="${quarto.id}">${fieldValue(bean:quarto, field:'nome')}</g:link></td>

							<td><g:link action="show" id="${quarto.id}">${fieldValue(bean:quarto, field:'numero')}</g:link></td>
                        
                            <td><g:link action="show" id="${quarto.id}">${fieldValue(bean:quarto, field:'descricao')}</g:link></td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
			<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/list/backgroundPagina',file:'backgroundPagina.jpg')});">  
				 <ul class="pagination" align="center"><li class="active" style="background-image:url(${createLinkTo(dir:'images/view/list/paginacao',file:'paginacao.jpg')});"><g:paginate total="${Quarto.count()}"/></ul>
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
