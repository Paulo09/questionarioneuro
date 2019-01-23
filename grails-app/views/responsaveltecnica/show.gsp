

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
		  
        <title>Dados Responsaveltecnica</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light yellow lighten-1"> 

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
        <div class="card grey lighten-4 z-depth-5"><div class="card-image"></div>		
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light blue lighten-2 z-depth-5">${flash.message}</nav>
            </g:if>
            <div class="dialog">
                <table class="striped left grey lighten-2">
                    <tbody>

                        <div class="card-content yellow lighten-1">
                                <h4 align="center" class="blue-text">Dados Responsável Técnico</h4>
                        </div>

                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:responsaveltecnica, field:'id')}</td>
                            
                        </tr>

                         <tr class="prop">
                            <td valign="top" class="name"><b>Nome:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:responsaveltecnica, field:'nome')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Coren:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:responsaveltecnica, field:'coren')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Observação:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:responsaveltecnica, field:'observacao')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons" align="center"><br>
                <g:form>
                    <input type="hidden" name="id" value="${responsaveltecnica?.id}" />
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light blue" style="background-image:url(${createLinkTo(dir:'images/view/show/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;"   action="Edit"   value="Editar"/></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light blue" style="background-image:url(${createLinkTo(dir:'images/view/show/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;"  action="Delete" value="Apagar"/></span>
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
