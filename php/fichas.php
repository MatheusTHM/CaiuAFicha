<?php
session_start();


if(empty($_SESSION['id'])){
	$_SESSION['msg'] = "É necessário estar logado para visualizar suas fichas.";
	header("Location: login.php");
}else{
	include_once '../php/classes/user.class.php';
	include_once '../php/classes/conexao.class.php';
	include_once '../php/classes/ficha.class.php';
	$user = new User;
	$conectar = new conexao;
	$ficha = new ficha;
	$ficha->desSessionar();
	$conn = $conectar->getConexao();
	
	$cmd = "SELECT * FROM personagem WHERE nome=".$_SESSION['id']." LIMIT 2";
	$result = mysqli_query($conn, $cmd);
	$row = mysqli_fetch_assoc($result);

	
	
}
?>
<!DOCTYPE html>
  <html>
    <head>
	<title>Suas Fichas</title>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="../css/materialize.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="../css/custom.css"  media="screen,projection"/>
	<link rel="icon" type="imagem/png" href="../images/Extra/favicon.png" />
<link href="https://fonts.googleapis.com/css?family=Calligraffitti|Saira+Stencil+One|Calistoga|Oswald&display=swap" rel="stylesheet"> 
	<link rel="icon" type="imagem/png" href="../images/Extra/favicon.png" />

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0"/>
    </head>
    <body>
<?php
		include_once 'cabecalho.php';

		include_once 'side-nav.php';
		echo "<div id='fundo'> <div id='div_fichas'>";
				
			if(isset($msg)){
				echo $msg;
			}
		if($result){
			if($row['nome'] == $_SESSION['id']){
				$msg = "Tem ficha aqui";
				$countCMD = "SELECT nome,id, count(*) as contador FROM personagem where nome =".$_SESSION['id'];
				$count = mysqli_query($conn, $countCMD);
				$count_row = mysqli_fetch_assoc($count);
				$i = 0;
				echo "<div id='Texto18'>Há ".$count_row['contador']." fichas associadas a essa conta:</div>";
				while($i < $count_row['contador']){
					$exibir = "SELECT perso,id FROM personagem where nome =".$_SESSION['id']." LIMIT ".$i.", 100";
					$exibir_consulta = mysqli_query($conn, $exibir);
					$exibir_row = mysqli_fetch_assoc($exibir_consulta);
					$info = $ficha->separar($exibir_row['perso']);
					//$ficha->setFicha($info[0],$info[1],$info[2],$info[3],$info[4],$info[5],$info[6],$info[7],$info[8],$info[9],$info[10],$info[11],$info[12],$info[13],$info[14],$info[15],$info[16],$info[17],$info[18],$info[19],$info[20],$info[21],$info[22],$info[23],$info[24],$info[25],$info[26],$info[27],$info[28],$info[29],$info[30],$info[31]);
					//echo $info;
					echo "<div id='ListaF'>
					<div id='Texto19'>Nome: $info[24]<br>Raça: $info[0]<br>Classe e Nível: $info[6] $info[20]</div><BR>";
					echo "<form method='POST' action='gerarPDF.php'><input type='number' name='id' value=".$exibir_row['id']." hidden><input target='_blank' id='butPer' type='submit' value=''></form><BR></div><br>";
					$i++;
					
					/*
						0 = raça
						1-5 - sub raças
						6 - classe
						7-13 - arq
						20 - nivel
						21 - antecedente
						22 - proficiencia
						23 - exp
						24 - personagem
						25 - tendencia
						26-31 - atributos
						32 - 37 - mod atri
						
					*/
				}
			}else{
				$msg = "Nem tem ficha aqui";
			}
		}else{
		$msg = "Erro na chamada com o banco";
		}
	?>
		
			</div>
		</div>
		<?PHP
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