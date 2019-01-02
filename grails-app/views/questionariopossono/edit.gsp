

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
        <title>Editar Dados Questionariopossono</title>
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
		  <span class="card-title"><b>E</b>ditar Dados <b>Questionariopossono</b></span>
		</div>
        <div class="body">
            <g:if test="${flash.message}">
	            <nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/edit/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${questionariopossono}">
            <div class="errors">
                <g:renderErrors bean="${questionariopossono}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${questionariopossono?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantoTempodemorouDormir">Quanto Tempodemorou Dormir:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'quantoTempodemorouDormir','errors')}">
                                    <i class="fa fa-list"></i><g:select id="quantoTempodemorouDormir" name="quantoTempodemorouDormir" from="${questionariopossono.constraints.quantoTempodemorouDormir.inList}" value="${questionariopossono.quantoTempodemorouDormir}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="finalExameComoAcordou">Final Exame Como Acordou:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'finalExameComoAcordou','errors')}">
                                    <i class="fa fa-list"></i><g:select id="finalExameComoAcordou" name="finalExameComoAcordou" from="${questionariopossono.constraints.finalExameComoAcordou.inList}" value="${questionariopossono.finalExameComoAcordou}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="comoAcordouFinalExame">Como Acordou Final Exame:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'comoAcordouFinalExame','errors')}">
                                    <i class="fa fa-list"></i><g:select id="comoAcordouFinalExame" name="comoAcordouFinalExame" from="${questionariopossono.constraints.comoAcordouFinalExame.inList}" value="${questionariopossono.comoAcordouFinalExame}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="comentario">Comentario:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'comentario','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite comentario " id="comentario" name="comentario" size="50" value="${fieldValue(bean:questionariopossono,field:'comentario')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="despertouDuranteExame">Despertou Durante Exame:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'despertouDuranteExame','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite despertouDuranteExame " id="despertouDuranteExame" name="despertouDuranteExame" size="50" value="${fieldValue(bean:questionariopossono,field:'despertouDuranteExame')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="finalExameComoAcordouCampo">Final Exame Como Acordou Campo:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'finalExameComoAcordouCampo','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite finalExameComoAcordouCampo " id="finalExameComoAcordouCampo" name="finalExameComoAcordouCampo" size="50" value="${fieldValue(bean:questionariopossono,field:'finalExameComoAcordouCampo')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantasHorasSonoAchaDormiu">Quantas Horas Sono Acha Dormiu:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'quantasHorasSonoAchaDormiu','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite quantasHorasSonoAchaDormiu " id="quantasHorasSonoAchaDormiu" name="quantasHorasSonoAchaDormiu" size="50" value="${fieldValue(bean:questionariopossono,field:'quantasHorasSonoAchaDormiu')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="quantasVezes">Quantas Vezes:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'quantasVezes','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite quantasVezes " id="quantasVezes" name="quantasVezes" size="50" value="${fieldValue(bean:questionariopossono,field:'quantasVezes')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tomouMedicacaoDormirExame">Tomou Medicacao Dormir Exame:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'tomouMedicacaoDormirExame','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite tomouMedicacaoDormirExame " id="tomouMedicacaoDormirExame" name="tomouMedicacaoDormirExame" size="50" value="${fieldValue(bean:questionariopossono,field:'tomouMedicacaoDormirExame')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="tomouMedicacaoDormirExameCampo">Tomou Medicacao Dormir Exame Campo:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'tomouMedicacaoDormirExameCampo','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite tomouMedicacaoDormirExameCampo " id="tomouMedicacaoDormirExameCampo" name="tomouMedicacaoDormirExameCampo" size="50" value="${fieldValue(bean:questionariopossono,field:'tomouMedicacaoDormirExameCampo')}"/>
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
