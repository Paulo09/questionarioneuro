

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
        <title>Lista Medicoresponsavel</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light  yellow lighten-2">  
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
	    <g:form action="buscar" method="post" class="medicorequisitante">
			<div class="list">
				<div class="input-field col s8 ">
				<input type="text" placeholder="Buscar Paciente" id="nome" name="nome" ><br/>
			</div>
			<div class="buttons" align="center">
				<span class="button"><input  class="blue lighten-2 btn waves-effect waves-light" type="submit" style="padding:10px;margin:10px;size:30px;width:110px;" value="Buscar"/></span>
			</div><br>
		</g:form>

        <div class="card"><div class="card-image"></div>
        <div class="body">
             <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">${flash.message}</nav>
            </g:if>
            <div class="list">
                <table class="striped centered grey lighten-2">
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="crm" title="Crm" />
                        
                   	        <g:sortableColumn property="dtCadastro" title="Dt Cadastro" />
                        
                   	        <g:sortableColumn property="nome" title="Nome" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${medicoresponsavelList}" status="i" var="medicoresponsavel">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${medicoresponsavel.id}">${fieldValue(bean:medicoresponsavel, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:medicoresponsavel, field:'crm')}</td>
                        
                            <td>${fieldValue(bean:medicoresponsavel, field:'dtCadastro')}</td>
                        
                            <td>${fieldValue(bean:medicoresponsavel, field:'nome')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
			<nav class="nav-extended btn waves-effect waves-light yellow lighten-1">  
				 <ul class="pagination" align="center"><li class="active yellow lighten-1"><g:paginate total="${Medicoresponsavel.count()}"/></ul>
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
