<!doctype html>
<html lang="PT">
  <head>
		 <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css"/>



		 <!--Materilize embarcado-->
	      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	      <!--Import materialize.css-->
	      <link type="text/css" rel="stylesheet" href="${createLinkTo(dir:'css',file:'materialize.min.css')}" media="screen,projection"/>
	      <!--Let browser know website is optimized for mobile-->
	      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		  <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'materialize.css')}"/>
		  <!--Materilize embarcado-->
			<!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
	  <link rel="stylesheet" href="materialize.css">
    <meta charset="utf-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>Neuro Teste</title>

    <meta name="mobile-web-app-capable" content="yes">
    <link rel="icon" sizes="192x192" href="images/android-desktop.png">

    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-title" content="Material Design Lite">
    <link rel="apple-touch-icon-precomposed" href="images/ios-desktop.png">

    <meta name="msapplication-TileImage" content="images/touch/ms-touch-icon-144x144-precomposed.png">
    <meta name="msapplication-TileColor" content="#3372DF">

    <link rel="shortcut icon" href="images/favicon.png">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.grey-orange.min.css">
    <link rel="stylesheet" href="../styles.css">

		 <meta name="viewport" content="width=device-width,initial-scale=1.0">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

		 <style>
       body{


       }

       .progress{
         width:50%;
         margin:0 auto;
         margin-top:20%;
       }

       @media only screen and (max-width:924px){
            .progress{
               width:70%;
               margin:0 auto;
               margin-top:60%;
             }
       }

     </style>

  </head>
  <body>

	<nav class="nav-extended btn waves-effect waves-light red lighten-2">
		    <div class="nav-content">
		      <ul class="tabs tabs-transparent">
		        <!--<li class="tab disabled"><a href="show/${usuario.id}" target="_self">${usuario}</a></li>-->

		        <li class="tab"><a href="sair"  target="_self">Sair</a></li>
						     <li class="tab"><a class="active">Menu</a></li>
		      </ul>
		    </div>
	</nav>



   <ul id="slide-out" class="side-nav">
		<li><div class="user-view">
		  <div class="background" >
		  <img src="${createLinkTo(dir:'images/menuLateral/backgroundPagina',file:'backgroundPagina.jpg')}">
		  </div>
		  <a href="show/${usuario.id}" target="_self"><img class="circle" src="${createLinkTo(dir:'images/menuLateral/usuario',file:'usuario.jpg')}"></a>
		  <a href="#!name"><span class="white-text name">jCloud-Bpmn</span></a>
		  <a href="#!email"><span class="white-text email">jcloudBpmn@jcloudbpmn.com</span></a>
		</div></li>
		<li><a class="collapsible-header waves-effect waves-teal active" href="usuario/${usuario.id}" target="_self"><i class="material-icons">cloud</i>${usuario}</a></li>
		<li><div class="divider"></div></li>
		<li><a class="collapsible-header waves-effect waves-teal active" href="#!"><i class="material-icons">face</i>Editar Dados Usuário</a></li>
		<li><div class="divider"></div></li>
		<div class="row">
			<div class="input-field col s9">
			  <i class="material-icons prefix">search</i>
			  <input type="text" id="link" class="autocomplete">
			  <label for="autocomplete-input">Buscar</label>
			  <img align="right" src="https://chart.googleapis.com/chart?chs=150x200&cht=qr&chl=http://192.168.1.89:8080/teste/android/neuro.apk">
			</div>
		</div>
	</ul>





    <div class="demo-blog mdl-layout mdl-js-layout has-drawer is-upgraded">
      <main class="mdl-layout__content">
        <div class="demo-blog__posts mdl-grid">


				<div class="red lighten-2 mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
				<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/questionariovideoeeg.jpg);" >
				<a href="/teste/questionariovideoeeg">
				</div>
					<div class="mdl-card__supporting-text white-text meta meta--fill mdl-color-text--white-600" >
							<div>
							<strong><b>Questionário Video EEG</b></strong>
							</div>
						</div>
					</div>
				</a>

				<div class="red lighten-2 mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
				<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/questionarioenfermagem.jpg);" >
				<a href="/teste/questionarioenfermagem">
				</div>
					<div class="mdl-card__supporting-text white-text meta meta--fill mdl-color-text--white-600" >
							<div>
							<strong><b>Questionário Enfermagem</b></strong>
							</div>
						</div>
					</div>
				</a>

					<div class="red lighten-2 mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
				<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/questionariopossono.jpg);" >
				<a href="/teste/questionariopossono">
				</div>
					<div class="mdl-card__supporting-text white-text meta meta--fill mdl-color-text--white-1200" >
							<div>
							<strong><b>Questionário Pós-Sono</b></strong>
							</div>
						</div>
					</div>
				</a>




		  <div class="teal lighten-2 mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
			<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/cadastrar.jpg);" >
			<a href="/teste/usuario">
			</div>
				<div class="mdl-card__supporting-text white-text meta meta--fill mdl-color-text--yellow-600" >
					  <div>
						<strong><b>Questionário Satisfação</b></strong>
					  </div>
					</div>
				</div>
			</a>

			<div class="teal lighten-2 mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
			<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/exame.jpg);" >
			<a href="/teste/exame">
			</div>
				<div class="mdl-card__supporting-text white-text meta meta--fill mdl-color-text--yellow-600" >
					  <div>
						<strong><b>Exames</b></strong>
					  </div>
					</div>
				</div>
			</a>

			<div class="teal lighten-2 mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
			<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/quarto.jpg);" >
			<a href="/teste/quarto">
			</div>
				<div class="mdl-card__supporting-text white-text meta meta--fill mdl-color-text--yellow-600" >
					  <div>
						<strong><b>Quarto</b></strong>
					  </div>
					</div>
				</div>
			</a>

			<div class="yellow mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
			<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/medicoRequisitante.jpg);" >
			<a href="/teste/medicorequisitante">
			</div>
				<div class="mdl-card__supporting-text meta meta--fill mdl-color-text--blue-600" >
					  <div>
						<strong><b>Medico Requisitante</b></strong>
					  </div>
					</div>
				</div>
			</a>


			<div class="yellow mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
			<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/enfermagem.jpg);" >
			<a href="/teste/responsaveltecnica">
			</div>
				<div class="mdl-card__supporting-text meta meta--fill mdl-color-text--blue-600" >
					  <div>
						<strong><b>Responsável Técnica</b></strong>
					  </div>
					</div>
				</div>
			</a>


			<div class="yellow mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
			<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/medicoResponsavel.jpg);" >
			<a href="/teste/medicoresponsavel">
			</div>
				<div class="mdl-card__supporting-text meta meta--fill mdl-color-text--blue-600" >
					  <div>
						<strong><b>Médico Responsável</b></strong>
					  </div>
					</div>
				</div>
			</a>

				<div class="blue mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
					<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/convenio.jpg);" >
					<a href="/teste/convenio">
					</div>
						<div class="mdl-card__supporting-text white-text meta meta--fill mdl-color-text--blue-600" >
								<div>
								<strong><b>Convenio</b></strong>
								</div>
							</div>
						</div>
				</a>



				<div class="blue mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
			<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/paciente.jpg);" >
			<a href="/teste/paciente">
			</div>
				<div class="mdl-card__supporting-text white-text meta meta--fill mdl-color-text--white-600" >
					  <div>
						<strong><b>Paciente</b></strong>
					  </div>
					</div>
				</div>
			</a>



				<div class="blue mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
				<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/usuario.jpg);" >
				<a href="/teste/usuario">
				</div>
					<div class="mdl-card__supporting-text white-text meta meta--fill mdl-color-text--white-600" >
							<div>
							<strong><b>Usuário</b></strong>
							</div>
						</div>
					</div>
				</a>

				<!--<div class="blue-grey darken-1 mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
				<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/questionariovideoeeg.jpg);" >
				<a href="/teste/questionariovideoeeg">
				</div>
					<div class="mdl-card__supporting-text white-text meta meta--fill mdl-color-text--white-600" >
							<div>
							<strong><b>Questionário Video EEG</b></strong>
							</div>
						</div>
					</div>
				</a>

				<div class="blue-grey darken-1 mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
				<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/questionarioenfermagem.jpg);" >
				<a href="/teste/questionarioenfermagem">
				</div>
					<div class="mdl-card__supporting-text white-text meta meta--fill mdl-color-text--white-600" >
							<div>
							<strong><b>Questionário Enfermagem</b></strong>
							</div>
						</div>
					</div>
				</a>

					<div class="blue-grey darken-1 mdl-card something-else mdl-cell mdl-cell--4-col mdl-cell--4-col-desktop z-depth-5" >
				<div class="mdl-card__media2" style="background-image:url(../images/menu/classes/questionariopossono.jpg);" >
				<a href="/teste/questionariopossono">
				</div>
					<div class="mdl-card__supporting-text white-text meta meta--fill mdl-color-text--white-1200" >
							<div>
							<strong><b>Questionário Pós-Sono</b></strong>
							</div>
						</div>
					</div>
				</a>-->

		<div class="fixed-action-btn">
		  <a href="#" data-activates="slide-out" class="button-collapse btn btn-floating pulse red lighten-2" style="background-image:url(${createLinkTo(dir:'images',file:'menu-background-botaocolapse-imagem.jpg')});"><i class="material-icons">menu</i></a>
        </div>
       <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	   <script type="text/javascript" src="${createLinkTo(dir:'js',file:'materialize.js')}"></script>
	   <script>$(".button-collapse").sideNav();</script>

	<script>
		var data = {}
		<g:each var="c" in="${grailsApplication.controllerClasses}">

			data['${c.logicalPropertyName}'] = "${createLinkTo(dir:'images',file:'Gnome-System-Run-32.png')}";


		</g:each>
		$(document).ready(function(){
		    $('#link').autocomplete({
				data:data,
				limit: 200,
				onAutocomplete: function(val) {
					 console.log("Valor Log:"+data)
					window.location = val;
				},
				minLength: 1,
			});
			$(document).ready(function() {
				$('input#input_text, textarea#textarea1').characterCounter();
			});
		});
	  </script>

    </body>
</html>
