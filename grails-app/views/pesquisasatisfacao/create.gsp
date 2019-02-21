

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

        <title>Cadastrar Pesquisasatisfacao</title>
    </head>
	<nav class="nav-extended btn waves-effect waves-light teal lighten-2">
		<div class="nav-content">
		   <ul class="tabs tabs-transparent">
			<li class="tab"><a href="list" target="_self">Voltar</a></li>
			<li class="tab"><a class="active">Novo</a></li>
		  </ul>
		</div>
	</nav>
	<body class="white lighten-2">
	<div class="container" style="margin-top:40px;">
    <body onload="introJs().goToStep(1).start().previousStep();">
        <div class="card z-depth-5"><div class="card-image"></div>
        <div class="body">
            <g:if test="${flash.message}">
				<nav class="nav-extended btn waves-effect waves-light red lighten-2 z-depth-5">${flash.message}</nav>
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

                             <div class="card-content teal lighten-2">
                                <h4 align="center" class="white-text">Pesquisa de Satisfação</h4>
                            </div>

                            <ul class="collapsible">
                                    <li>
                                        <div class="collapsible-header" data-step="1" data-intro="Cadastrar"><i class="material-icons">filter_1</i><b>Como você avaliaria a velocidade do atendimento?</b></span></div>
                                        <div class="collapsible-body yellow lighten-4"><p>


                                                <select  class="icons" name="tempoSalaEspera" id="tempoSalaEspera" >
                                                    <option value="" data-step="2" data-intro="Cadastrar"><b>Tempo Sala de Espera:</b></option>
                                                    <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                                    <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                                    <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                                    <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                                    <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                                </select>
                                                <select class="icons" name="tempoEsperaEsperaExamesRealizados" id="tempoEsperaEsperaExamesRealizados" >
                                                    <option value="">Tempo Espera Exames Realizados:</option>
                                                    <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                                    <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                                    <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                                    <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                                    <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                                </select>

                                                <select class="icons" name="tempoEsperaExameResultado" id="tempoEsperaExameResultado" >
                                                    <option value="">Tempo Espera Exame Resultado:</option>
                                                    <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                                    <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                                    <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                                    <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                                    <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                                </select>
                                        </p></div>
                                    </li>
                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">filter_2</i>
                                            <b>Como você avaliaria a facilidade no atendimento?</b>
                                        </div>
                                        <div class="collapsible-body yellow lighten-4"><p>


                                                    <select class="icons" name="facilidadedeMarcarConsultaAtendido" id="facilidadedeMarcarConsultaAtendido" >
                                                        <option value="">Facilidadede Marcar Consulta Atendido:</option>
                                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                                    </select>

                                                    <select class="icons" name="horaAtendimento" id="horaAtendimento" >
                                                        <option value="">Hora Atendimento:</option>
                                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                                    </select>

                                                    <select class="icons" name="retornoImediatoChamada" id="retornoImediatoChamada" >
                                                        <option value="">Retorno Imediato Chamada:</option>
                                                        <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                                        <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                                        <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                                        <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                                        <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                                    </select>

                                        </p></div>
                                    </li>

                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">filter_3</i>
                                            <b>Como você avaliaria o seu atendimento?</b>
                                        </div>
                                        <div class="collapsible-body yellow lighten-4"><p>

                                            <select class="icons" name="explicaQuerSaber" id="explicaQuerSaber" >
                                                <option value="">Explica o que você quer saber</option>
                                                <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                                <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                                <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                                <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                                <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                            </select>

                                            <select class="icons" name="simpaticaUtil" id="simpaticaUtil" >
                                                <option value="">Simpatica Útil para Você</option>
                                                <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                                <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                                <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                                <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                                <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                            </select>

                                        </p></div>
                                    </li>

                                     <li>
                                        <div class="collapsible-header"><i class="material-icons">filter_4</i>
                                            <b>Como você avaliaria a atitude dos outros funcionários?</b>
                                        </div>
                                        <div class="collapsible-body yellow lighten-4"><p>
                                            <select class="icons" name="explicaQuerSaberOutros" id="explicaQuerSaberOutros" >
                                                <option value="">Explica Quer Saber:</option>
                                                <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                                <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                                <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                                <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                                <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                            </select>
                                            <select class="icons" name="simpaticaUtilOutros" id="simpaticaUtilOutros" >
                                                <option value="">Simpatica Útil para Você:</option>
                                                <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                                <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                                <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                                <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                                <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                            </select>
                                        </p></div>
                                    </li>

                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">filter_5</i>
                                            <b>Como avaliaria nossas instalações?</b>
                                        </div>
                                        <div class="collapsible-body yellow lighten-4"><p>

                                             <select class="icons" name="facilidadeOrientar" id="facilidadeOrientar" >
                                                <option value="">Facilidade de se Orientar</option>
                                                <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                                <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                                <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                                <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                                <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                            </select>
                                            <select class="icons" name="confortoSeguranca" id="confortoSeguranca" >
                                                <option value="">Conforto e Segurança</option>
                                                <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                                <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                                <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                                <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                                <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                            </select>
                                            <select class="icons" name="organizacaoLimpeza" id="organizacaoLimpeza" >
                                                <option value="">Organização e Limpeza</option>
                                                <option value="Detestei - 1" data-icon="../images/pesquisa/star1.png" class="left">Detestei - 1</option>
                                                <option value="Nao Gostei - 2" data-icon="../images/pesquisa/star2.png" class="left">Não Gostei - 2</option>
                                                <option value="Indiferente - 3" data-icon="../images/pesquisa/star3.png" class="left">Indiferente - 3</option>
                                                <option value="Gostei - 4" data-icon="../images/pesquisa/star4.png" class="left">Gostei - 4</option>
                                                <option value="Adorei - 5" data-icon="../images/pesquisa/star5.png" class="left">Adorei - 5</option>
                                            </select>
                                        </p></div>
                                    </li>

                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">filter_6</i>
                                            <b>Você nos recomendaria a seus amigos e parentes?</b>
                                        </div>
                                        <div class="collapsible-body yellow lighten-4"><p>
                                            <select class="icons" name="voceRecomendaria" id="voceRecomendaria" >
                                                <option value="">Você Recomendaria</option>
                                                <option value="Sim" data-icon="../images/pesquisa/sim.png" class="left">SIM</option>
                                                <option value="Não" data-icon="../images/pesquisa/nao.png" class="left">NÃO</option>
                                            </select>
                                        </p></div>
                                    </li>

                                    <li>
                                        <div class="collapsible-header"><i class="material-icons">filter_7</i>
                                            <b>Em que podemos melhorar?</b>
                                        </div>
                                        <div class="collapsible-body yellow lighten-4"><p>
                                            <g:textArea type="text" placeholder="Digite observacao " class="materialize-textarea" id="observacao" name="observacao" value="${fieldValue(bean:pesquisasatisfacao,field:'observacao')}"/>
									        <label for="observacao"><font size="3"><b>Em que podemos melhorar?</b></font></label>
                                            <div class="buttons" align="center">
                                                <span class="button"><input  class="btn waves-effect waves-light teal lighten-2 z-depth-5" style="padding:10px;margin:10px;size:30px;width:110px;" type="submit" value="Salvar"/></span>
                                            </div>
                                    </p></div>
                                    </li>
                            </ul>



                        </div>

                        </tbody>
                    </table>
            </g:form>

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
