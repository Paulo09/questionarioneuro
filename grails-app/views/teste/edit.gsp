

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
        <title>Editar Dados Teste</title>
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
		  <span class="card-title"><b>E</b>ditar Dados <b>Teste</b></span>
		</div>
        <div class="body">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${teste}">
            <div class="errors">
                <g:renderErrors bean="${teste}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${teste?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sexo">Sexo:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'sexo','errors')}">
                                    <i class="fa fa-list"></i><g:select id="sexo" name="sexo" from="${teste.constraints.sexo.inList}" value="${teste.sexo}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nivelEscolaridade">Nivel Escolaridade:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'nivelEscolaridade','errors')}">
                                    <i class="fa fa-list"></i><g:select id="nivelEscolaridade" name="nivelEscolaridade" from="${teste.constraints.nivelEscolaridade.inList}" value="${teste.nivelEscolaridade}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cpf">Cpf:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'cpf','errors')}">
                                    <i class="fa fa-sort-numeric-asc"></i><input type="text"placeholder="Digite cpf " class="form-control" onkeypress="return txtBoxFormat(this, '999.999.999-99', event);" maxlength="14" data-clear-btn-text="Limpar Cpf" data-clear-btn="true" id="cpf" name="cpf" size="11" value="${fieldValue(bean:teste,field:'cpf')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dtCadastro">Dt Cadastro:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'dtCadastro','errors')}">
                                    <input name="dtCadastro" class="form-control" data-clear-btn-text="Limpar Dt Cadastro"  data-clear-btn="true" value="${String.format('%td/%<tm/%<tY',teste?.dtCadastro)}" ></input>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email">Email:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'email','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite email " id="email" name="email" size="50" value="${fieldValue(bean:teste,field:'email')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="estadoCivil">Estado Civil:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'estadoCivil','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite estadoCivil " id="estadoCivil" name="estadoCivil" size="50" value="${fieldValue(bean:teste,field:'estadoCivil')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="foneCelular">Fone Celular:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'foneCelular','errors')}">
                                    <i class="fa fa-mobile-phone"></i><input type="tel" placeholder="Digite foneCelular " class="form-control" id="foneCelular" name="foneCelular"  class="form-control" onkeypress="return txtBoxFormat(this, '(99)9-9999-9999', event);" maxlength="15" size="50" value="${fieldValue(bean:teste,field:'foneCelular')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="foneFixo">Fone Fixo:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'foneFixo','errors')}">
                                    <i class="fa fa-phone"></i><input type="tel" placeholder="Digite foneFixo " class="form-control" id="foneFixo" name="foneFixo"  class="form-control" onkeypress="return txtBoxFormat(this, '(99)9999-9999', event);" maxlength="14" size="50" value="${fieldValue(bean:teste,field:'foneFixo')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nome">Nome:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'nome','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nome " id="nome" name="nome" size="50" value="${fieldValue(bean:teste,field:'nome')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="rg">Rg:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'rg','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite rg " id="rg" name="rg" size="50" value="${fieldValue(bean:teste,field:'rg')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tipoLogradouro">Tipo Logradouro:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:teste,field:'tipoLogradouro','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite tipoLogradouro " id="tipoLogradouro" name="tipoLogradouro" size="50" value="${fieldValue(bean:teste,field:'tipoLogradouro')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons" align="center">
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="Update" value="Salvar"  /></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" action="delete" value="Apagar"  /></span>
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
