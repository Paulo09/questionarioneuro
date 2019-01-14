

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
		
        <title>Cadastrar Pesquisasatisfacao</title>         
    </head>
	<nav class="nav-extended btn waves-effect waves-light red lighten-2">  
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
        <div class="card z-depth-5"><div class="card-image"></div>
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light">${flash.message}</nav>
            </g:if>
            <g:hasErrors bean="${pesquisasatisfacao}">
            <div class="errors">
                <g:renderErrors bean="${pesquisasatisfacao}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>

                             <div class="card-content red lighten-2 z-depth-5">
                                <h4 align="center" class="white-text">Pesquisa de Satisfação</h4>
                            </div>
                            <div class="card-tabs">
                                <ul class="tabs tabs-fixed-width grey lighten-4">&nbsp;<div class="red-text lighten-2"></div>
                                    <li class="tab"><a href="#pg1"><b>1.Velocidade do atendimento?</a></li>
                                    <li class="tab"><a href="#pg2"><b>2.Facilidade no atendimento?</b></a></li>
                                    <li class="tab"><a href="#pg3"><b>3.Seu atendimento?</b></a></li>
                                </ul>
                            </div>

                        <div id="pg1">    
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'tempoSalaEspera','errors')}">
                                   <select class="icons" name="tempoSalaEspera" id="tempoSalaEspera" >
                                        <option value="">- Tempo Sala de Espera -</option>
                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                    </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'tempoEsperaEsperaExamesRealizados','errors')}">
                                    <select class="icons" name="tempoEsperaEsperaExamesRealizados" id="tempoEsperaEsperaExamesRealizados" >
                                        <option value="">- Tempo Espera Espera Exames Realizados -</option>
                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                    </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'tempoEsperaExameResultado','errors')}">
                                    <select class="icons" name="tempoEsperaExameResultado" id="tempoEsperaExameResultado" >
                                        <option value="">- Tempo Espera Exame Resultado -</option>
                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                    </select>
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'facilidadedeMarcarConsultaAtendido','errors')}">
                                    <select class="icons" name="facilidadedeMarcarConsultaAtendido" id="facilidadedeMarcarConsultaAtendido" >
                                        <option value="">- Facilidadede Marcar Consulta Atendido -</option>
                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                    </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'horaAtendimento','errors')}">
                                    <select class="icons" name="horaAtendimento" id="horaAtendimento" >
                                        <option value="">- Hora Atendimento -</option>
                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                    </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'retornoImediatoChamada','errors')}">
                                    <select class="icons" name="retornoImediatoChamada" id="retornoImediatoChamada" >
                                        <option value="">- Retorno Imediato Chamada -</option>
                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                    </select>
                                </td>
                            </tr>
                        </div> 

                        <div id="pg2">      
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'explicaQuerSaber','errors')}">
                                    <select class="icons" name="explicaQuerSaber" id="explicaQuerSaber" >
                                        <option value="">- Explica o que você quer saber -</option>
                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                    </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'simpaticaUtil','errors')}">
                                    <select class="icons" name="simpaticaUtil" id="simpaticaUtil" >
                                        <option value="">- Simpatica Útil para Você -</option>
                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                    </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'explicaQuerSaberOutros','errors')}">
                                    <select class="icons" name="explicaQuerSaberOutros" id="explicaQuerSaberOutros" >
                                        <option value="">- Explica Quer Saber -</option>
                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                    </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'simpaticaUtilOutros','errors')}">
                                    <select class="icons" name="simpaticaUtilOutros" id="simpaticaUtilOutros" >
                                        <option value="">- Simpatica Útil para Você -</option>
                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                    </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'facilidadeOrientar','errors')}">
                                    <select class="icons" name="facilidadeOrientar" id="facilidadeOrientar" >
                                        <option value="">- Facilidade de se Orientar -</option>
                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                    </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'confortoSeguranca','errors')}">
                                    <select class="icons" name="confortoSeguranca" id="confortoSeguranca" >
                                        <option value="">- Conforto e Segurança -</option>
                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                    </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'organizacaoLimpeza','errors')}">
                                    <select class="icons" name="organizacaoLimpeza" id="organizacaoLimpeza" >
                                        <option value="">- Organização e Limpeza -</option>
                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                    </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'voceRecomendaria','errors')}">
                                    <select class="icons" name="voceRecomendaria" id="voceRecomendaria" >
                                        <option value="">- Você Recomendaria -</option>
                                        <option value="Sim" data-icon="../images/pesquisa/sim.png" class="left">SIM</option>
                                        <option value="Não" data-icon="../images/pesquisa/nao.png" class="left">NÃO</option>
                                    </select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name"></td>
                                <td valign="top" class="value ${hasErrors(bean:pesquisasatisfacao,field:'observacao','errors')}">
                                    <g:textArea type="text" placeholder="Digite observacao " class="materialize-textarea" id="observacao" name="observacao" value="${fieldValue(bean:pesquisasatisfacao,field:'observacao')}"/>
									<label for="observacao"><font size="3"><b>Em que podemos melhorar?</b></font></label>
                                </td>
                            </tr>
                        </div>      
                        
                        </tbody>
                    </table>
                </div>
	            <div class="buttons" align="center">
                    <span class="button"><input  class="btn waves-effect waves-light red lighten-2 z-depth-5" style="padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Salvar"/></span>
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
            <script>
			    function Mudarestado(el) {
                var display = document.getElementById(el).style.visibility;
                if(display == "hidden")document.getElementById(el).style.visibility = 'visible';
                else document.getElementById(el).style.visibility = 'hidden';}
            </script>
    </body>
</html>
