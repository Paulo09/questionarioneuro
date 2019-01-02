

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
		
        <title>Cadastrar Questionariopossono</title>         
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
		  <span class="card-title"><b>C</b>adastrar <b>Questionariopossono</b></span>
		</div>
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light" style="background-image:url(${createLinkTo(dir:'images/view/create/message',file:'message.jpg')});">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${questionariopossono}">
            <div class="errors">
                <g:renderErrors bean="${questionariopossono}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'quantoTempodemorouDormir','errors')}">
                                    <i class="fa fa-list"></i><g:select id="quantoTempodemorouDormir" name="quantoTempodemorouDormir" from="${questionariopossono.constraints.quantoTempodemorouDormir.inList}" value="${questionariopossono.quantoTempodemorouDormir}" ></g:select>
									<label for="quantoTempodemorouDormir"><font size="3"><b>Quanto Tempodemorou Dormir</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'finalExameComoAcordou','errors')}">
                                    <i class="fa fa-list"></i><g:select id="finalExameComoAcordou" name="finalExameComoAcordou" from="${questionariopossono.constraints.finalExameComoAcordou.inList}" value="${questionariopossono.finalExameComoAcordou}" ></g:select>
									<label for="finalExameComoAcordou"><font size="3"><b>Final Exame Como Acordou</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'comoAcordouFinalExame','errors')}">
                                    <i class="fa fa-list"></i><g:select id="comoAcordouFinalExame" name="comoAcordouFinalExame" from="${questionariopossono.constraints.comoAcordouFinalExame.inList}" value="${questionariopossono.comoAcordouFinalExame}" ></g:select>
									<label for="comoAcordouFinalExame"><font size="3"><b>Como Acordou Final Exame</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'comentario','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite comentario " id="comentario" name="comentario" size="50" value="${fieldValue(bean:questionariopossono,field:'comentario')}"/>
									<label for="comentario"><font size="3"><b>Comentario</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'despertouDuranteExame','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite despertouDuranteExame " id="despertouDuranteExame" name="despertouDuranteExame" size="50" value="${fieldValue(bean:questionariopossono,field:'despertouDuranteExame')}"/>
									<label for="despertouDuranteExame"><font size="3"><b>Despertou Durante Exame</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'finalExameComoAcordouCampo','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite finalExameComoAcordouCampo " id="finalExameComoAcordouCampo" name="finalExameComoAcordouCampo" size="50" value="${fieldValue(bean:questionariopossono,field:'finalExameComoAcordouCampo')}"/>
									<label for="finalExameComoAcordouCampo"><font size="3"><b>Final Exame Como Acordou Campo</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'quantasHorasSonoAchaDormiu','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite quantasHorasSonoAchaDormiu " id="quantasHorasSonoAchaDormiu" name="quantasHorasSonoAchaDormiu" size="50" value="${fieldValue(bean:questionariopossono,field:'quantasHorasSonoAchaDormiu')}"/>
									<label for="quantasHorasSonoAchaDormiu"><font size="3"><b>Quantas Horas Sono Acha Dormiu</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'quantasVezes','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite quantasVezes " id="quantasVezes" name="quantasVezes" size="50" value="${fieldValue(bean:questionariopossono,field:'quantasVezes')}"/>
									<label for="quantasVezes"><font size="3"><b>Quantas Vezes</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'tomouMedicacaoDormirExame','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite tomouMedicacaoDormirExame " id="tomouMedicacaoDormirExame" name="tomouMedicacaoDormirExame" size="50" value="${fieldValue(bean:questionariopossono,field:'tomouMedicacaoDormirExame')}"/>
									<label for="tomouMedicacaoDormirExame"><font size="3"><b>Tomou Medicacao Dormir Exame</b></font></label>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:questionariopossono,field:'tomouMedicacaoDormirExameCampo','errors')}">
                                    <i class="fa fa-text-width"></i><input type="text" class="form-control" size="50" placeholder="Digite tomouMedicacaoDormirExameCampo " id="tomouMedicacaoDormirExameCampo" name="tomouMedicacaoDormirExameCampo" size="50" value="${fieldValue(bean:questionariopossono,field:'tomouMedicacaoDormirExameCampo')}"/>
									<label for="tomouMedicacaoDormirExameCampo"><font size="3"><b>Tomou Medicacao Dormir Exame Campo</b></font></label>
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
