

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
        <title>Editar Dados Medicorequisitante</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light yellow lighten-2">  
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="#test1"><font color="#2196f3">Sair</font></a></li>
			<li class="tab"><a class="active" href="#test2"><font color="#2196f3">Menu</font></a></li>
			<li class="tab disabled"><a href="#test3"><font color="#2196f3">Buscar</font></a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">   
	<div class="container" style="margin-top:40px;">
    <body>
        <div class="card grey lighten-4 z-depth-5">
		  <div class="card-image"></div>
        <div class="body card grey lighten-4">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${medicorequisitante}">
            <div class="errors">
                <g:renderErrors bean="${medicorequisitante}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${medicorequisitante?.id}" />
                <div class="dialog">
                    <table>
                       <table class="striped left grey lighten-2">
                        <tbody>

                            <div class="card-content yellow lighten-2">
                                <h4 align="center" class="white-text"><font color="#2196f3">Cadastrar Dados Paciente</font></h4>
                            </div>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:medicorequisitante,field:'nome','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nome " id="nome" name="nome" size="50" value="${fieldValue(bean:medicorequisitante,field:'nome')}"/>
                                    <label for="permissao"><font size="3"><b>Nome</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="crm"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:medicorequisitante,field:'crm','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite crm " id="crm" name="crm" size="50" value="${fieldValue(bean:medicorequisitante,field:'crm')}"/>
                                    <label for="permissao"><font size="3"><b>Crm</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop" style="display:none">
                                <td valign="top" class="name">
                                    <label for="dtCadastro"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:medicorequisitante,field:'dtCadastro','errors')}">
                                    <input name="dtCadastro" class="form-control" data-clear-btn-text="Limpar Dt Cadastro"  data-clear-btn="true" value="${String.format('%td/%<tm/%<tY',medicorequisitante?.dtCadastro)}" ></input>
                                    <label for="permissao"><font size="3"><b>Data Cadastro</b></font></label>
                                </td>
                            </tr> 
                        
                            
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons" align="center">
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light blue lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="Update" value="Salvar" onclick="return confirm('Deseja editar os dados?');" /></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light blue lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="delete" value="Apagar" onclick="return confirm('Deseja apagar os dados?');" /></span>
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
