

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
        <title>Editar Dados Questionario</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/barraMenu',file:'barraMenu.jpg')});">  
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
    <body style="background-image:url(${createLinkTo(dir:'images/view/edit/backgroundPagina',file:'backgroundPagina.jpg')});background-repeat:no-repeat;background-size:cover;">
        <div class="card">
		  <div class="card-image">
		  <img src="${createLinkTo(dir:'images/view/edit/backgroundCard',file:'backgroundCard.jpg')}">
		  <span class="card-title"><b>E</b>ditar Dados <b>Questionario</b></span>
		</div>
        <div class="body">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${questionario}">
            <div class="errors">
                <g:renderErrors bean="${questionario}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${questionario?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="descricao">Descricao:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionario,field:'descricao','errors')}">
                                    <i class="fa fa-pencil-square-o"></i><g:textArea type="text" placeholder="Digite descricao " class="form-control" id="descricao" name="descricao" value="${fieldValue(bean:questionario,field:'descricao')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="exame">Exame:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionario,field:'exame','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Exame.list()}" name="exame.id" value="${questionario?.exame?.id}" ></g:select> <a href="${createLinkTo(dir:'/exame/create')}">* Cadastrar Exame</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medicorequisitante">Medicorequisitante:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionario,field:'medicorequisitante','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicorequisitante.list()}" name="medicorequisitante.id" value="${questionario?.medicorequisitante?.id}" ></g:select> <a href="${createLinkTo(dir:'/medicorequisitante/create')}">* Cadastrar Medicorequisitante</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medicoresponsavel">Medicoresponsavel:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionario,field:'medicoresponsavel','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Medicoresponsavel.list()}" name="medicoresponsavel.id" value="${questionario?.medicoresponsavel?.id}" ></g:select> <a href="${createLinkTo(dir:'/medicoresponsavel/create')}">* Cadastrar Medicoresponsavel</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome">Nome:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionario,field:'nome','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nome " id="nome" name="nome" size="50" value="${fieldValue(bean:questionario,field:'nome')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="responsaveltecnica">Responsaveltecnica:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionario,field:'responsaveltecnica','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Responsaveltecnica.list()}" name="responsaveltecnica.id" value="${questionario?.responsaveltecnica?.id}" ></g:select> <a href="${createLinkTo(dir:'/responsaveltecnica/create')}">* Cadastrar Responsaveltecnica</a>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="usuario">Usuario:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionario,field:'usuario','errors')}">
                                    <g:select class="form-control" optionKey="id" from="${Usuario.list()}" name="usuario.id" value="${questionario?.usuario?.id}" ></g:select> <a href="${createLinkTo(dir:'/usuario/create')}">* Cadastrar Usuario</a>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons" align="center">
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="Update" value="Salvar" onclick="return confirm('Deseja editar os dados?');" /></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="delete" value="Apagar" onclick="return confirm('Deseja apagar os dados?');" /></span>
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
