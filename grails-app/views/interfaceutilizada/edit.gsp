

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
        <title>Editar Dados Interfaceutilizada</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light">  
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
    <body>
         <div class="card grey lighten-2 card z-depth-5"><div class="card-image"></div>
        <div class="body">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${interfaceutilizada}">
            <div class="errors">
                <g:renderErrors bean="${interfaceutilizada}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${interfaceutilizada?.id}" />
                <div class="dialog">
                    <table class="striped centered grey lighten-2">
                        <tbody>

                            <div class="card-content teal lighten-2">
                                <h4 align="center" class="white-text">Interface Utilizada</h4>
                            </div>


                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome">Nome:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:interfaceutilizada,field:'nome','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nome " id="nome" name="nome" size="50" value="${fieldValue(bean:interfaceutilizada,field:'nome')}"/>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricao">Descricao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:interfaceutilizada,field:'descricao','errors')}">
                                    <i class="fa fa-pencil-square-o"></i><g:textArea type="text" placeholder="Digite descricao " class="materialize-textarea" id="descricao" name="descricao" value="${fieldValue(bean:interfaceutilizada,field:'descricao')}"/>
                                </td>
                            </tr>

                            <tr class="prop" style="display:none">
                                <td valign="top" class="name">
                                    <label for="cadastro">Data Cadastro:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:interfaceutilizada,field:'cadastro','errors')}">
                                    <input name="cadastro" class="form-control" data-clear-btn-text="Limpar Cadastro"  data-clear-btn="true" value="${String.format('%td/%<tm/%<tY',interfaceutilizada?.cadastro)}" ></input>
                                </td>
                            </tr>  
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons" align="center">
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="padding:10px;margin:10px;size:30px;width:110px;" action="Update" value="Salvar"  /></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="padding:10px;margin:10px;size:30px;width:110px;" action="delete" value="Apagar"  /></span>
                </div>
            </g:form>
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
