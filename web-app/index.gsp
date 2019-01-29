
<html>
    <head>
        <title>Cloud Developer</title>
     <link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     <link rel='stylesheet' href='https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css'>
    <link rel="stylesheet" href="css/style.css">

		 <!--Materilize embarcado-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="../css/materialize.min.css"  media="screen,projection"/>
      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	  <link rel="stylesheet" href="../css/materialize.css">

	  <!--Materilize embarcado-->

    </head>

    <body onload="window.scrollTo(0,1);" class="red lighten-2">

   	<div class="container" style="margin-top:40px;">

          <div class="card z-depth-5">
            <div class="card-image">
              <img src="${createLinkTo(dir:'images/index/backgroundPagina',file:'backgroundPagina.jpg')}" width=200 height=300 >
              <h3 align="center"><b>N</b>euro <b>S</b>ystem</h3>

		<g:form name="formLogin" url="[controller:'usuario',action:'login']">

			<div class="container"><br>
			<form class="col s12">
			<div class="input-field col s12">
				<i class="material-icons prefix">account_circle</i>
				<input type="text" id="Editbox1" name="login" ><br/>
				<label for="icon_telephone">Login</label>
			</div>

			<div class="input-field col s12" id="input">
				<i class="material-icons prefix">lock</i>
				<input type="password"  name="senha" class="validate">
				<label for="icon_telephone">Senha</label>
			</div>
			<div  align="center">
				<input type="submit"   id="Button1"  name="Button1" value="Entrar" class="btn waves-effect waves-light  red lighten-2" style="padding:10px;margin:10px;size:30px;width:110px;">
				<input type="Reset"    id="Button2"  name="Button2" value="Limpar" class="btn waves-effect waves-light  red lighten-2" onClick="history.go(0)" style="padding:10px;margin:10px;size:0px;width:110px;">
			</div><br>

			<div class="fixed-action-btn horizontal click-to-toggle">
				<a class="btn-floating waves-light red lighten-2">
				  <i class="material-icons">menu</i>
				</a>
				<ul>
				  <li><a class="btn-floating red"><i class="material-icons">favorite</i></a></li>
				  <li><a class="btn-floating yellow darken-1"><i class="material-icons">stars</i></a></li>
				  <li><a class="btn-floating green"><i class="material-icons">publish</i></a></li>
				  <li><a class="btn-floating blue"><i class="material-icons">share</i></a></li>
				</ul>
			</div>

		</g:form>





	<!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.js"></script>
	  <script>
	  var input = document.querySelector('#input input');
	  var objCAMPO = document.querySelector('#input i'); objCAMPO.addEventListener('click',function(){input.type = input.type == 'text' ? 'password' : 'text';});</script>
    </body>
</html>