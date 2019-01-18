

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
        <title>Editar Dados Quarto</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light z-depth-5">  
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="/teste/usuario/menu" target="_self">Voltar</a></li>
			<li class="tab  disabled"><a class="active">Listar</a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">   
	<div class="container" style="margin-top:40px;">
    <body>
       <div class="card grey lighten-4 z-depth-5"><div class="card-image"></div>
        <div class="body">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${quarto}">
            <div class="errors">
                <g:renderErrors bean="${quarto}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${quarto?.id}" />
                <div class="dialog">
                    <table class="striped left grey lighten-2">
                        <tbody>

                             <div class="card-content teal lighten-1">
                                <h4 align="center" class="white-text">Editar Dados Quarto: ${quarto.nome}</h4>
                            </div>

                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:quarto,field:'nome','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nome " id="nome" name="nome" size="50" value="${fieldValue(bean:quarto,field:'nome')}"/>
                                    <label for="descricao"><font size="3"><b>Nome:</b></font></label>
                                </td>
                            </tr>

                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="numero"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:quarto,field:'numero','errors')}">
                                    <i class="fa fa-sort-numeric-asc"></i><input placeholder="Digite numero " class="form-control"  size="50" type="number" id="numero" name="numero" value="${fieldValue(bean:quarto,field:'numero')}" />
                                    <label for="descricao"><font size="3"><b>Número:</b></font></label>
                                </td>
                            </tr>  
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricao"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:quarto,field:'descricao','errors')}">
                                    <i class="fa fa-pencil-square-o"></i><g:textArea type="text" placeholder="Digite descricao" class="materialize-textarea" id="descricao" name="descricao" value="${fieldValue(bean:quarto,field:'descricao')}"/>
                                    <label for="descricao"><font size="3"><b>Descrição:</b></font></label>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons" align="center">
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light z-depth-5" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="Update" value="Salvar" onclick="return confirm('Deseja editar os dados?');" /></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light z-depth-5" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="delete" value="Apagar" onclick="return confirm('Deseja apagar os dados?');" /></span>
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
