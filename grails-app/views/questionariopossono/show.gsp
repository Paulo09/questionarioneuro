

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
		  
        <title>Dados Questionariopossono</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">  
		<div class="nav-content">
		  <ul class="tabs tabs-transparent">
			<li class="tab"><a href="/teste/questionariopossono/list" target="_self">Voltar</a></li>
			<li class="tab  disabled"><a class="active">Dados</a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">   
	<div class="container" style="margin-top:40px;">
    <body>
        <div class="card z-depth-5"><div class="card-image"></div>		
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light blue lighten-2 z-depth-5">${flash.message}</nav>
            </g:if>
            <div class="dialog">
                <table class="striped left">
                    <tbody>

                        <div class="card-content red lighten-2 z-depth-5">
                            <h4 align="center" class="white-text">Questionário Pós-Sono</h4>
                        </div>

                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariopossono, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Quanto Tempodemorou Dormir:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariopossono, field:'quantoTempodemorouDormir')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Final Exame Como Acordou:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariopossono, field:'finalExameComoAcordou')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Como Acordou Final Exame:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariopossono, field:'comoAcordouFinalExame')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Comentario:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariopossono, field:'comentario')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Despertou Durante Exame:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariopossono, field:'despertouDuranteExame')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Final Exame Como Acordou Campo:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariopossono, field:'finalExameComoAcordouCampo')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Quantas Horas Sono Acha Dormiu:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariopossono, field:'quantasHorasSonoAchaDormiu')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Quantas Vezes:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariopossono, field:'quantasVezes')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Tomou Medicação Dormir Exame:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariopossono, field:'tomouMedicacaoDormirExame')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><b>Tomou Medicação Dormir Exame Campo:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:questionariopossono, field:'tomouMedicacaoDormirExameCampo')}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons" align="center"><br>
                <g:form>
                    <input type="hidden" name="id" value="${questionariopossono?.id}" />
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2 z-depth-5" style="background-image:url(${createLinkTo(dir:'images/view/show/botao',file:'botaoEditar.jpg')});padding:10px;margin:10px;size:30px;width:110px;"  onclick="return confirm('Deseja Editar os dados?');" action="Edit"   value="Editar"/></span>
                    <span class="button"><g:actionSubmit class="btn waves-effect waves-light red lighten-2 z-depth-5" style="background-image:url(${createLinkTo(dir:'images/view/show/botao',file:'botaoDeletar.jpg')});padding:10px;margin:10px;size:30px;width:110px;" onclick="return confirm('Deseja apagar os dados?');" action="Delete" value="Apagar"/></span>
                </g:form>
            </div><br>
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
