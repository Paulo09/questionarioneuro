

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
        <title>Lista Questionariovideoeeg2</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/list/barraMenu',file:'barraMenu.jpg')});">  
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
    <body style="background-image:url(${createLinkTo(dir:'images/view/list/backgroundPagina',file:'backgroundPagina.jpg')});background-repeat:no-repeat;background-size:cover;">
        <div class="card">
		  <div class="card-image">
		  <img src="${createLinkTo(dir:'images/view/list/backgroundCard',file:'backgroundCard.jpg')}">
		  <span class="card-title"><b>L</b>ista <b>Questionariovideoeeg2</b></span>
		</div>
        <div class="body">
             <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/list/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <div class="list">
                <table class="striped centered grey lighten-2">
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="paisParentes" title="Pais Parentes" />
                        
                   	        <g:sortableColumn property="problemaGravidezParto" title="Problema Gravidez Parto" />
                        
                   	        <g:sortableColumn property="frequentaescola" title="Frequentaescola" />
                        
                   	        <g:sortableColumn property="convulcaocomFebreInfancia" title="Convulcaocom Febre Infancia" />
                        
                   	        <g:sortableColumn property="anosAndou" title="Anos Andou" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${questionariovideoeeg2List}" status="i" var="questionariovideoeeg2">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${questionariovideoeeg2.id}">${fieldValue(bean:questionariovideoeeg2, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:questionariovideoeeg2, field:'paisParentes')}</td>
                        
                            <td>${fieldValue(bean:questionariovideoeeg2, field:'problemaGravidezParto')}</td>
                        
                            <td>${fieldValue(bean:questionariovideoeeg2, field:'frequentaescola')}</td>
                        
                            <td>${fieldValue(bean:questionariovideoeeg2, field:'convulcaocomFebreInfancia')}</td>
                        
                            <td>${fieldValue(bean:questionariovideoeeg2, field:'anosAndou')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
			<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/list/backgroundPagina',file:'backgroundPagina.jpg')});">  
				 <ul class="pagination" align="center"><li class="active" style="background-image:url(${createLinkTo(dir:'images/view/list/paginacao',file:'paginacao.jpg')});"><g:paginate total="${Questionariovideoeeg2.count()}"/></ul>
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
