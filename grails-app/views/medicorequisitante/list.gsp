

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
        <title>Lista Medicorequisitante</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light yellow lighten-1">  
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="#test1"><font color="#2196f3">Sair</font></a></li>
			<li class="tab mdl-color-text--blue-600"><a class="active" href="#test2"><font color="#2196f3">Menu</font></a></li>
			<li class="tab disabled"><a href="#test3"><font color="#2196f3">Buscar</font></a></li>
		  </ul>
		</div>
	</nav>

	<body class="white lighten-2">    
   	<div class="container" style="margin-top:40px;">
    <body>

	<g:form action="buscar" method="post" class="medicorequisitante">
		<div class="list">
			<div class="input-field col s8 ">
			<input type="text" placeholder="Buscar Paciente" id="nome" name="nome" ><br/>
		</div>
		<div class="buttons" align="center">
			<span class="button"><input  class="blue lighten-2 btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/create/botao',file:'botao.jpg')});padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Buscar"/></span>
		</div><br>
	</g:form>

	<div class="card z-depth-5">
	<div class="card-image"></div>
	<div class="body">
	<body class="white lighten-2">    
   	
    <body style="background-image:url(${createLinkTo(dir:'images/view/list/backgroundPagina',file:'backgroundPagina.jpg')});background-repeat:no-repeat;background-size:cover;">
        <div class="card"><div class="card-image"></div>
        <div class="body">
             <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">${flash.message}</nav>
            </g:if>
            <div class="list">

				<div class="card-content yellow lighten-1">
					<h4 align="center" class="white-text"><font color="#2196f3">Listar Medico Requisitante</h4>
				</div>

                <table class="striped centered grey lighten-2">
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />

							<g:sortableColumn property="nome" title="Nome" />
                        
                   	        <g:sortableColumn property="crm" title="Crm" />
                        
                   	        <g:sortableColumn property="dtCadastro" title="Dt Cadastro" />
                        
                   	        
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${medicorequisitanteList}" status="i" var="medicorequisitante">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${medicorequisitante.id}">${fieldValue(bean:medicorequisitante, field:'id')}</g:link></td>

							<td><g:link action="show" id="${medicorequisitante.id}">${fieldValue(bean:medicorequisitante, field:'nome')}</g:link></td>
                        
                            <td><g:link action="show" id="${medicorequisitante.id}">${fieldValue(bean:medicorequisitante, field:'crm')}</g:link></td>
                        
                            <td><g:link action="show" id="${medicorequisitante.id}">${String.format('%td/%<tm/%<tY',medicorequisitante?.dtCadastro)}</g:link></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
			<nav class="nav-extended btn waves-effect waves-light yellow lighten-1">  
				 <ul class="pagination" align="center"><li class="active"><g:paginate total="${Medicorequisitante.count()}"/></ul>
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
