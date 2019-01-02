

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
		
        <title>Cadastrar Teste</title>         
    </head>
	<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/create/barraMenu',file:'barraMenu.jpg')});">  
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
    <body style="background-image:url(${createLinkTo(dir:'images/view/create/backgroundPagina',file:'backgroundPagina.jpg')});background-repeat:no-repeat;background-size:cover;">
        <div class="card">
		  <div class="card-image">
		  <img src="${createLinkTo(dir:'images/view/create/backgroundCard',file:'backgroundCard.jpg')}">
		  <span class="card-title"><b>C</b>adastrar <b>Teste</b></span>
		</div>
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/create/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${teste}">
            <div class="errors">
                <g:renderErrors bean="${teste}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'sexo','errors')}">
                                    <i class="fa fa-list"></i><g:select id="sexo" name="sexo" from="${teste.constraints.sexo.inList}" value="${teste.sexo}" ></g:select>
									<label for="sexo"><font size="3"><b>Sexo</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'nivelEscolaridade','errors')}">
                                    <i class="fa fa-list"></i><g:select id="nivelEscolaridade" name="nivelEscolaridade" from="${teste.constraints.nivelEscolaridade.inList}" value="${teste.nivelEscolaridade}" ></g:select>
									<label for="nivelEscolaridade"><font size="3"><b>Nivel Escolaridade</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'cpf','errors')}">
                                    <i class="fa fa-sort-numeric-asc"></i><input type="text"placeholder="Digite cpf " class="form-control" onkeypress="return txtBoxFormat(this, '999.999.999-99', event);" maxlength="14" data-clear-btn-text="Limpar Cpf" data-clear-btn="true" id="cpf" name="cpf" size="11" value="${fieldValue(bean:teste,field:'cpf')}"/>
									<label for="cpf"><font size="3"><b>Cpf</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'dtCadastro','errors')}">
                                    <input name="dtCadastro" class="form-control" data-clear-btn-text="Limpar Dt Cadastro"  data-clear-btn="true" value="${String.format('%td/%<tm/%<tY',teste?.dtCadastro)}" ></input>
									<label for="dtCadastro"><font size="3"><b>Dt Cadastro</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'email','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite email " id="email" name="email" size="50" value="${fieldValue(bean:teste,field:'email')}"/>
									<label for="email"><font size="3"><b>Email</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'estadoCivil','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite estadoCivil " id="estadoCivil" name="estadoCivil" size="50" value="${fieldValue(bean:teste,field:'estadoCivil')}"/>
									<label for="estadoCivil"><font size="3"><b>Estado Civil</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'foneCelular','errors')}">
                                    <i class="fa fa-mobile-phone"></i><input type="tel" placeholder="Digite foneCelular " class="form-control" id="foneCelular" name="foneCelular"  class="form-control" onkeypress="return txtBoxFormat(this, '(99)9-9999-9999', event);" maxlength="15" size="50" value="${fieldValue(bean:teste,field:'foneCelular')}"/>
									<label for="foneCelular"><font size="3"><b>Fone Celular</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'foneFixo','errors')}">
                                    <i class="fa fa-phone"></i><input type="tel" placeholder="Digite foneFixo " class="form-control" id="foneFixo" name="foneFixo"  class="form-control" onkeypress="return txtBoxFormat(this, '(99)9999-9999', event);" maxlength="14" size="50" value="${fieldValue(bean:teste,field:'foneFixo')}"/>
									<label for="foneFixo"><font size="3"><b>Fone Fixo</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'nome','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nome " id="nome" name="nome" size="50" value="${fieldValue(bean:teste,field:'nome')}"/>
									<label for="nome"><font size="3"><b>Nome</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'rg','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite rg " id="rg" name="rg" size="50" value="${fieldValue(bean:teste,field:'rg')}"/>
									<label for="rg"><font size="3"><b>Rg</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'tipoLogradouro','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite tipoLogradouro " id="tipoLogradouro" name="tipoLogradouro" size="50" value="${fieldValue(bean:teste,field:'tipoLogradouro')}"/>
									<label for="tipoLogradouro"><font size="3"><b>Tipo Logradouro</b></font></label>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
	            <div class="buttons" align="center">
                    <span class="button"><input  class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/create/botao',file:'botao.jpg')});padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Salvar"/></span>
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
