<?php
	session_start();
	include_once 'classes/conexao.class.php';
	$conectar = new conexao;
	$conn = $conectar->getConexao();
	
	$dados_rc = filter_input_array(INPUT_POST, FILTER_DEFAULT);
	
	$erro = false;
	
	$dados_st = array_map('strip_tags', $dados_rc);
	$dados = array_map('trim', $dados_st);
	
	if((strlen($dados['senha'])) < 6){
		$erro = true;
		$msg = "A senha deve ter no minímo 6 caracteres";
	}
		
	$result_usuario = "SELECT id FROM usuarios WHERE email='". $dados['email'] ."'";
	$resultado_usuario = mysqli_query($conn, $result_usuario);
	if(($resultado_usuario) AND ($resultado_usuario->num_rows != 0)){
		$erro = true;
		$msg = "Este e-mail já está cadastrado";
	}
	
	if(!$erro){
		$dados['senha'] = password_hash($dados['senha'], PASSWORD_DEFAULT);
		
		$result_usuario = "INSERT INTO usuarios (nome, email, senha) VALUES (
						'" .$dados['nome']. "',
						'" .$dados['email']. "',
						'" .$dados['senha']. "'
						)";
		$resultado_usario = mysqli_query($conn, $result_usuario);
		if(mysqli_insert_id($conn)){
			header("Location: login.php");
		}else{
			$msg = "Erro ao cadastrar o usuário";
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
				<?php if($erro == true){echo $msg;} ?>
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