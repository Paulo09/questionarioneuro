

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
		
        <title>Cadastrar Convenio</title>         
    </head>
	<nav class="nav-extended btn waves-effect waves-light blue lighten-2">  
		<div class="nav-content">
		  <ul class="tabs tabs-transparent ">
			<li class="tab"><a href="#test1">Sair</a></li>
			<li class="tab"><a class="active" href="list" target="_self">Voltar</a></li>
			<li class="tab disabled"><a href="#test3">Cadastrar Convênio</a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">   
	<div class="container" style="margin-top:40px;">
    <body>
        <div class="card grey lighten-4">
		  <div class="card-image">
		</div>
        <div class="body" class="yellow lighten-2">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${convenio}">
            <div class="errors">
                <g:renderErrors bean="${convenio}" as="list" />
            </div>
            </g:hasErrors>

            <g:form action="save" method="post" >
                <div class="dialog">
                    <table class="striped left">
                    
                        <tbody>

                        <div class="card-content blue lighten-2">
                            <h4 align="center" class="white-text">Cadastrar Convênio</h4>
                        </div>
                     
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:convenio,field:'nome','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite nome " id="nome" name="nome" size="50" value="${fieldValue(bean:convenio,field:'nome')}"/>
									<label for="nome"><font size="3"><b>Nome</b></font></label>
                                </td>
                            </tr> 

                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:convenio,field:'descricao','errors')}">
                                    <i class="fa fa-pencil-square-o"></i><g:textArea type="text" placeholder="Digite descricao " class="materialize-textarea" id="descricao" name="descricao" value="${fieldValue(bean:convenio,field:'descricao')}"/>
									<label for="descricao"><font size="3"><b>Descricao</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop" style="display:none">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:convenio,field:'cadastro','errors')}">
                                    <input name="cadastro" class="datepicker" data-clear-btn-text="Limpar Cadastro"  data-clear-btn="true" value="${String.format('%td/%<tm/%<tY',convenio?.cadastro)}" ></input>
									<label for="cadastro"><font size="3"><b>Cadastro</b></font></label>
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
              $(document).ready(function(){$('.timepicker').timepicker();});
		   </script>
    </body>
</html>
