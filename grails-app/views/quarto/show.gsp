

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
		  
        <title>Dados Quarto</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light z-depth-5">  
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="/teste/quarto/list" target="_self">Voltar</a></li>
			<li class="tab  disabled"><a class="active">Dados</a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">   
	<div class="container" style="margin-top:40px;">
    <body>
        <div class="card grey lighten-2 z-depth-5"><div class="card-image"></div>		
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light blue lighten-2 z-depth-5">${flash.message}</nav>
            </g:if>
            <div class="dialog">
               <table class="striped left grey lighten-2">
                    <tbody>


                        <div class="card-content teal lighten-2">
                            <h4 align="center" class="white-text">Dados Quarto</h4>
                        </div>

                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:quarto, field:'id')}</td>
                            
                        </tr>

                         <tr class="prop">
                            <td valign="top" class="name"><b>Nome:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:quarto, field:'nome')}</td>
                            
                        </tr>

                          <tr class="prop">
                            <td valign="top" class="name"><b>Número:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:quarto, field:'numero')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Descrição:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:quarto, field:'descricao')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons" align="center"><br>
                <g:form>
                    <input type="hidden" name="id" value="${quarto?.id}" />
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light z-depth-5" style="padding:10px;margin:10px;size:30px;width:110px;" action="Edit"   value="Editar"/></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light z-depth-5" style="padding:10px;margin:10px;size:30px;width:110px;" action="Delete" value="Apagar"/></span>
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
