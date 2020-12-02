<?php
	session_start();
	include_once 'classes/conexao.class.php';
	$conectar = new conexao;
	$conn = $conectar->getConexao();
	
	$email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_STRING);
	$senha = filter_input(INPUT_POST, 'senha', FILTER_SANITIZE_STRING);
	
	if((!empty($email)) AND (!empty($senha))){
		$result_usuario = "SELECT id, nome, senha FROM usuarios WHERE email='$email' LIMIT 1";
		$resultado_usuario = mysqli_query($conn, $result_usuario);
		
		if($resultado_usuario){
			$row_usuario = mysqli_fetch_assoc($resultado_usuario);
			if(password_verify($senha, $row_usuario['senha'])){
				$_SESSION['id'] = $row_usuario['id'];
				$_SESSION['nome'] = $row_usuario['nome'];
				$_SESSION['email'] = $email;
				header("Location: fichas.php");
			}else{
				$msg = "Login e senha incorreto!";
			}
		}else{
		$msg = "Login e senha incorreto!";
		}
	}

	mysqli_close($conn);
?>
<!DOCTYPE html>
  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="../css/materialize.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="../css/custom.css"  media="screen,projection"/>

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
			<div id="Texto15">Login:</div><br>
				<?php if(isset($msg)){echo $msg;}
					  if(isset($_SESSION['msg'])){echo $_SESSION['msg']; unset($_SESSION['msg']);;}
				?>
				<form name="cad"  method="post" action="logar.php">
					<input type="text" id="formulario" name="email" class="null" placeholder="Email" autofocus><br><br>
					<input type="password" id="formulario" name="senha" class="null" placeholder="Senha" ><br><br>
					<br>
					<div class="cont">
						<label for="cadBtn"><img src="../images/Buttons/Login.png" class="btnimg hoverable"></label>
						<input type="submit" value="" class="lcabtn" id="cadBtn" name="btnLogar">
						<a href="cadastro.php"><img src="../images/Buttons/Cadastrar.png" class="btnimg hoverable"></a>						
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
        