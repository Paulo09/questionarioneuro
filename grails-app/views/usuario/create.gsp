

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
          <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'introjs.css')}"/>
          <script type="text/javascript" src="${createLinkTo(dir:'js',file:'intro.js')}"></script>
		
        <title>Cadastrar Usuario</title>         
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
	<body class="white lighten-2" onload="introJs().goToStep(2).start().previousStep();">   
	<div class="container" style="margin-top:40px;">

        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/create/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${usuario}">
            <div class="errors">
                <g:renderErrors bean="${usuario}" as="list" />
            </div>
            </g:hasErrors>
            
            <div class="card"><div class="card-image"></div>

            <div class="card-content blue lighten-2">
                <h4 align="center" class="white-text">Cadastrar Usuário</h4>
            </div>


            <div class="input-field col s12">
                <button href="javascript:void(0);" onclick="javascript:introJs().goToStepNumber(1).start();" class="waves-effect waves-light btn" type="reset">Iniciar</button>
            </div>


            <g:form action="save" method="post" >
                <!--<div class="card grey lighten-4">
                <div class="grey lighten-4 striped left card-content"></div>
                <div class="card-tabs  grey lighten-4">
                <ul class="tabs tabs-fixed-width  blue lighten-2">
                    <li class="tab"><a class="grey lighten-4" href="#campos"><b>Cadastrar Campos</b></a></li>
                    <li class="tab"><a class="grey lighten-4" href="#login_e_senha"><b>Definir Login e Senha</b></a></li>
                </ul>
                </div>-->
                <div class="card-content">
                <div id="campos">

                <!--<div class="input-field col s12">
                    <button href="javascript:void(0);" onclick="javascript:introJs().start();" class="waves-effect waves-light btn" type="reset">Iniciar
                    </button>
                </div>-->

                         
                                <label data-step="1" data-intro="Cadastrar">
                                    <g:select  id="permissao" name="permissao" from="${usuario.constraints.permissao.inList}" value="${usuario.permissao}" noSelection="['':'- Permissão -']" onload="javascript:introJs().start();" ></g:select>
                                </label>
                         
                                
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'email','errors')}">
                                    <i class="fa fa-text-width"></i><input data-step="2" data-intro="Cadastrar" type="text" class="form-control" size="50" placeholder="Digite email " id="email" name="email" size="50" value="${fieldValue(bean:usuario,field:'email')}"/>
                                    <label for="email"><font size="3"><b>Email</b></font></label>
                                </td>
                            </tr> 
                
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'foneCelular','errors')}">
                                    <i class="fa fa-mobile-phone"></i><input data-step="3" data-intro="Cadastrar, o telefone para contato (Celular)" type="tel" placeholder="Digite foneCelular " class="form-control" id="foneCelular" name="foneCelular"  class="form-control" onkeypress="return txtBoxFormat(this, '(99)9-9999-9999', event);" maxlength="15" size="50" value="${fieldValue(bean:usuario,field:'foneCelular')}"/>
									<label for="foneCelular"><font size="3"><b>Fone Celular</b></font></label>
                                </td>
                            </tr> 
                        
                            

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'nome','errors')}">
                                    <i class="fa fa-text-width"></i><input data-step="4" data-intro="Cadastrar, nome para contato..." type="text" class="form-control" size="50" placeholder="Digite nome " id="nome" name="nome" size="50" value="${fieldValue(bean:usuario,field:'nome')}"/>
									<label for="nome"><font size="3"><b>Nome</b></font></label>
                                </td>
                            </tr>
                    </div>

                    <!--<div id="login_e_senha">-->

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'login','errors')}">
                                    <i class="fa fa-text-width"></i><input data-step="5" data-intro="Cadastrar" type="text" class="form-control" size="50" placeholder="Digite login " id="login" name="login" size="50" value="${fieldValue(bean:usuario,field:'login')}"/>
									<label for="login"><font size="3"><b>Login</b></font></label>
                                </td>
                            </tr>   
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'senha','errors')}">
                                    <i class="fa fa-text-width"></i><input data-step="6" data-intro="Cadastrar, senha por favor..." type="password" class="form-control" size="50" placeholder="Digite senha " id="senha" name="senha" size="50" value="${fieldValue(bean:usuario,field:'senha')}"/>
									<label for="senha"><font size="3"><b>Senha</b></font></label>
                                </td>
                            </tr> 

                             <div class="buttons" align="center" data-step="7" data-intro="Clique no botão para salvar...">
                                <span class="button"><input  class="btn waves-effect waves-light blue lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/create/botao',file:'botao.jpg')});padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Salvar"/></span>
                            </div>
           
      <!--</div>-->
      </g:form>

            <!--<g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                           
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'foneCelular','errors')}">
                                    <i class="fa fa-mobile-phone"></i><input type="tel" placeholder="Digite foneCelular " class="form-control" id="foneCelular" name="foneCelular"  class="form-control" onkeypress="return txtBoxFormat(this, '(99)9-9999-9999', event);" maxlength="15" size="50" value="${fieldValue(bean:usuario,field:'foneCelular')}"/>
									<label for="foneCelular"><font size="3"><b>Fone Celular</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'login','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite login " id="login" name="login" size="50" value="${fieldValue(bean:usuario,field:'login')}"/>
									<label for="login"><font size="3"><b>Login</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'nome','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nome " id="nome" name="nome" size="50" value="${fieldValue(bean:usuario,field:'nome')}"/>
									<label for="nome"><font size="3"><b>Nome</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:usuario,field:'senha','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite senha " id="senha" name="senha" size="50" value="${fieldValue(bean:usuario,field:'senha')}"/>
									<label for="senha"><font size="3"><b>Senha</b></font></label>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
	            <div class="buttons" align="center">
                    <span class="button"><input  class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/create/botao',file:'botao.jpg')});padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Salvar"/></span>
                </div><br>
            </g:form>-->
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
