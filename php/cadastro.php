<!DOCTYPE html>
  <html>
    <head>
	<title>Cadastro</title>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="../css/materialize.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="../css/custom.css"  media="screen,projection"/>
	<link rel="icon" type="imagem/png" href="../images/Extra/favicon.png" />

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0"/>
    </head>
    <body>
<?php
		include_once 'cabecalho.php';

		include_once 'side-nav.php';
?>		
		<div id="fundo"> 
			<div class="cadastro">
			<div id="Texto15">Cadastro:</div><br>
				<?php if(isset($msg)){echo $msg;}
					  if(isset($_SESSION['msg'])){echo $_SESSION['msg']; unset($_SESSION['msg']);;}
				?>
				<form name="cad"  method="post" action="cadastrar.php">
					<input type="text" name="nome" id="formulario" class="null" placeholder="Nome" required autofocus><br><br>
					<input type="text" name="email" id="formulario" class="null" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required autofocus><br><br>
					<input type="password" name="senha" id="formulario" class="null" placeholder="Senha" pattern="(?=.*\d)(?=.*[a-z]).{6,}" required autofocus><br><br>
					<br>
					<div class="cont">
						<label for="cadBtn"><img src="../images/Buttons/Cadastrar.png" class="btnimg hoverable"></label>
						<input type="submit" value="" class="lcabtn" id="cadBtn" name="btnLogar">
						<a href="login.php"><img src="../images/Buttons/Login.png" class="btnimg hoverable"></a>						
					<br><br></div>
				</form>
			</div>
		</div>
		
<?php
		include_once '../html/rodape.html';
?>
		
	  <!--JQuery BEFORE JAVASCRIPT at end of body for optimized loading-->
	  <script type="text/javascript" src="../jquery/jquery-3.4.1.js"></script>
	  <script type="text/javascript" src="../jquery/custom_q.js"></script>
	  <!--JavaScript at end of body for optimized loading-->
      <script type="text/javascript" src="../js/custom.js"></script>
      <script type="text/javascript" src="../js/materialize.js"></script>

    </body>
  </html>
        