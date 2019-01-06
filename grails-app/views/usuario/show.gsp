

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
		  
        <title>Dados Usuario</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light blue lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/show/barraMenu',file:'barraMenu.jpg')});">  
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
    <body style="background-image:url(${createLinkTo(dir:'images/view/show/backgroundPagina',file:'backgroundPagina.jpg')});background-repeat:no-repeat;background-size:cover;">
        <div class="card grey lighten-2" >
		  <div class="card-image">
		</div>		
        <div class="body z-depth-5">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/show/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <div class="dialog">
                <table class="striped left">
                    <tbody>

                        <div class="card-content blue lighten-2">
                                <h4 align="center" class="white-text">Dados Usuário</h4>
                        </div>

                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'id')}</td>
                            
                        </tr>

                         <tr class="prop">
                            <td valign="top" class="name"><b>Nome:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'nome')}</td>
                            
                        </tr>

                         <tr class="prop">
                            <td valign="top" class="name"><b>Login:</td>
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'login')}</td>
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Senha:</td>
                            
                            <td valign="top" class="value">******</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Permissao:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'permissao')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Email:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'email')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Fone Celular:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:usuario, field:'foneCelular')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons" align="center"><br>
                <g:form>
                    <input type="hidden" name="id" value="${usuario?.id}" />
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light blue lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/show/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;"  onclick="return confirm('Deseja Editar os dados?');" action="Edit"   value="Editar"/></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light blue lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/show/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" onclick="return confirm('Deseja apagar os dados?');" action="Delete" value="Apagar"/></span>
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
