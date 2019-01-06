

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
        <title>Editar Dados Usuario</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light blue lighten-2">  
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
        <div class="card grey lighten-2">
		  <div class="card-image">
		</div>
        <div class="body z-depth-5">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${usuario}">
            <div class="errors">
                <g:renderErrors bean="${usuario}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${usuario?.id}" />
                <div class="dialog">
                    <table class="striped left">
                        <tbody>

                            <div class="card-content blue lighten-2">
                                <h4 align="center" class="white-text">Editar Usuário: ${usuario.nome}</h4>
                            </div>

                              <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'nome','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nome " id="nome" name="nome" size="50" value="${fieldValue(bean:usuario,field:'nome')}"/>
                                    <label for="permissao"><font size="3"><b>Nome:</b></font></label>
                                </td>
                            </tr>

                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="login"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'login','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite login " id="login" name="login" size="50" value="${fieldValue(bean:usuario,field:'login')}"/>
                                    <label for="permissao"><font size="3"><b>Login</b></font></label>
                                </td>
                            </tr>  
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="senha"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'senha','errors')}">
                                    <i class="fa fa-text-width"></i><input type="password" class="form-control" size="50" placeholder="Digite senha " id="senha" name="senha" size="50" value="${fieldValue(bean:usuario,field:'senha')}"/>
                                    <label for="permissao"><font size="3"><b>Senha</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="permissao"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'permissao','errors')}">
                                    <i class="fa fa-list"></i><g:select id="permissao" name="permissao" from="${usuario.constraints.permissao.inList}" value="${usuario.permissao}" noSelection="['':'- Permissão -']" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'email','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite email " id="email" name="email" size="50" value="${fieldValue(bean:usuario,field:'email')}"/>
                                    <label for="permissao"><font size="3"><b>Email</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="foneCelular"></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'foneCelular','errors')}">
                                    <i class="fa fa-mobile-phone"></i><input type="tel" placeholder="Digite foneCelular " class="form-control" id="foneCelular" name="foneCelular"  class="form-control" onkeypress="return txtBoxFormat(this, '(99)9-9999-9999', event);" maxlength="15" size="50" value="${fieldValue(bean:usuario,field:'foneCelular')}"/>
                                    <label for="permissao"><font size="3"><b>Fone Celular</b></font></label>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons" align="center">
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light blue lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="Update" value="Salvar" onclick="return confirm('Deseja editar os dados?');" /></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light blue lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="delete" value="Apagar" onclick="return confirm('Deseja apagar os dados?');" /></span>
                </div><br>
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
