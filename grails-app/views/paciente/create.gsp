

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
		
        <title>Cadastrar Paciente</title>         
    </head>
	<nav class="nav-extended btn waves-effect waves-light  blue lighten-2">  
		<div class="nav-content">
		   <ul class="tabs tabs-transparent">
			<li class="tab"><a href="list" target="_self">Voltar</a></li>
			<li class="tab"><a class="active">Novo</a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">   
	<div class="container" style="margin-top:40px;">
    <body>
        <div class="card"><div class="card-image"></div>
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${paciente}">
            <div class="errors">
                <g:renderErrors bean="${paciente}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table class="striped left grey lighten-2">
                        <tbody>

                            <div class="card-content blue lighten-2">
                                <h4 align="center" class="white-text">Cadastrar Dados Paciente</h4>
                            </div>

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:paciente,field:'nome','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nome " id="nome" name="nome" size="50" value="${fieldValue(bean:paciente,field:'nome')}"/>
									<label for="nome"><font size="3"><b>Nome</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:paciente,field:'sexo','errors')}">
                                    <i class="fa fa-list"></i><g:select id="sexo" name="sexo" from="${paciente.constraints.sexo.inList}" value="${paciente.sexo}" noSelection="['':'- Sexo -']" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:paciente,field:'nivelEscolaridade','errors')}">
                                    <i class="fa fa-list"></i><g:select id="nivelEscolaridade" name="nivelEscolaridade" from="${paciente.constraints.nivelEscolaridade.inList}" value="${paciente.nivelEscolaridade}" noSelection="['':'- Nível de Escolaridade -']" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:paciente,field:'cpf','errors')}">
                                    <i class="fa fa-sort-numeric-asc"></i><input type="text"placeholder="Digite cpf " class="form-control" onkeypress="return txtBoxFormat(this, '999.999.999-99', event);" maxlength="14" data-clear-btn-text="Limpar Cpf" data-clear-btn="true" id="cpf" name="cpf" size="11" value="${fieldValue(bean:paciente,field:'cpf')}"/>
									<label for="cpf"><font size="3"><b>Cpf</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:paciente,field:'dataNascimento','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="datepicker" size="50" placeholder="Digite dataNascimento " id="dataNascimento" name="dataNascimento" size="50" value="${fieldValue(bean:paciente,field:'dataNascimento')}"/>
									<label for="dataNascimento"><font size="3"><b>Data Nascimento</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop" style="display:none">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:paciente,field:'dtCadastro','errors')}">
                                    <input name="dtCadastro" class="form-control" data-clear-btn-text="Limpar Dt Cadastro"  data-clear-btn="true" value="${String.format('%td/%<tm/%<tY',paciente?.dtCadastro)}" ></input>
									<label for="dtCadastro"><font size="3"><b>Dt Cadastro</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:paciente,field:'observacao','errors')}">
                                    <i class="fa fa-pencil-square-o"></i><g:textArea type="text" placeholder="Digite observacao " class="materialize-textarea" id="observacao" name="observacao" value="${fieldValue(bean:paciente,field:'observacao')}"/>
									<label for="observacao"><font size="3"><b>Observação</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:paciente,field:'rg','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite rg " id="rg" name="rg" size="50" value="${fieldValue(bean:paciente,field:'rg')}"/>
									<label for="rg"><font size="3"><b>Rg</b></font></label>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
	            <div class="buttons" align="center">
                    <span class="button"><input  class="btn waves-effect waves-light blue lighten-2" style="background-image:url(${createLinkTo(dir:'images/view/create/botao',file:'botao.jpg')});padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Salvar"/></span>
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
