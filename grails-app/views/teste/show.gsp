

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
		  
        <title>Dados Teste</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/show/barraMenu',file:'barraMenu.jpg')});">  
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
    <body style="background-image:url(${createLinkTo(dir:'images/view/show/backgroundPagina',file:'backgroundPagina.jpg')});background-repeat:no-repeat;background-size:cover;">
        <div class="card">
		  <div class="card-image">
		  <img src="${createLinkTo(dir:'images/view/show/backgroundCard',file:'backgroundCard.jpg')}">
		  <span class="card-title"><b>D</b>ados <b>Teste</b></span>
		</div>		
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/show/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <div class="dialog">
                <table class="striped centered">
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:teste, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Sexo:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:teste, field:'sexo')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nivel Escolaridade:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:teste, field:'nivelEscolaridade')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Cpf:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:teste, field:'cpf')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Dt Cadastro:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:teste, field:'dtCadastro')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Email:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:teste, field:'email')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Estado Civil:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:teste, field:'estadoCivil')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Fone Celular:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:teste, field:'foneCelular')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Fone Fixo:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:teste, field:'foneFixo')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Nome:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:teste, field:'nome')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Rg:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:teste, field:'rg')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Tipo Logradouro:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:teste, field:'tipoLogradouro')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons" align="center"><br>
                <g:form>
                    <input type="hidden" name="id" value="${teste?.id}" />
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/show/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;"   action="Edit"   value="Editar"/></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/show/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;"  action="Delete" value="Apagar"/></span>
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
