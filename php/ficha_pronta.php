<?php
	session_start();
	include_once '../php/classes/conexao.class.php';
	include_once '../php/classes/user.class.php';
	include_once '../php/classes/ficha.class.php';
	if(!isset($_POST['infoM'])){
		header("Location: ../index.php");
	}
	$ficha = new ficha;
	
?>
<!DOCTYPE html>
  <html>
    <head>
	<title>Área de Criação</title>
    	<meta charset="utf-8">
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="../css/materialize.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="../css/custom.css"  media="screen,projection"/>
	<link rel="icon" type="imagem/png" href="../images/Extra/favicon.png" />

<link href="https://fonts.googleapis.com/css?family=MedievalSharp|Saira+Stencil+One|Archivo+Black|Oswald&display=swap" rel="stylesheet"> 

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0"/>
    </head>
    <body>
	<?php
		include_once 'cabecalho.php';

		include_once 'side-nav.php';
		echo '<div id="fundoFicha">';
		
	?>

			

			<div id="InfoP">
			<div class="col s12" id="Texto12"><span class="flow-text"> Esse é o seu personagem. Confira as informações e finalize para gerar sua ficha </span></div>
			<div class ="col s12" id="Texto13"> <div id="int13">
			<?php
				$item1 = null;
				$item2 = null;
				$item3 = null;
				$item4 = null;
				$item5 = null;
				
				if(isset($_POST['item1'])){
					$item1 = $_POST['item1'];
				}
				
				if(isset($_POST['item2'])){
					$item2 = $_POST['item2'];
				}
				if(isset($_POST['item3'])){
					$item3 = $_POST['item3'];
				}
				if(isset($_POST['item4'])){
					$item4 = $_POST['item4'];
				}
				if(isset($_POST['item5'])){
					$item5 = $_POST['item5'];
				}
				$itens = array($item1, $item2, $item3, $item4, $item5);
				$ficha = new ficha;
				$infoM = ($_POST['infoM']);
				$info = ($ficha->filtro($infoM[0],$infoM[1],$infoM[2],$infoM[3],$infoM[4],$infoM[5],$infoM[6],$infoM[7],$infoM[8],$infoM[9],$infoM[10],$infoM[11],$infoM[12],$infoM[13],$infoM[14],$infoM[15],$infoM[16],$infoM[17],$infoM[18],$infoM[19],$infoM[20],$infoM[21],$infoM[22],$infoM[23],$infoM[24],$_POST['forca'], $_POST['destreza'], $_POST['constituicao'],$_POST['inteligencia'], $_POST['sabedoria'], $_POST['carisma'], $itens[0], $itens[1], $itens[2], $itens[3], $itens[4]));
				echo "Nome: ".($info[24]);
				echo "<br>";
				echo "Raça: ".($info[0]);
				echo "<br>";
				echo "Classe: ".($info[6]);
				echo "<br>";
				echo "Nível: ".($info[20]);
				echo "<br>";
				echo "Antecedente: ".($info[21]);
				echo "<br>";
				echo "Alinhamento: ".($info[25]);
				echo "<br>";
				echo "Itens: ".($info[38]);
				echo "</div></div><div class='col s12' id='Texto14'>Atributos: <br>";
				echo "Força: $info[26] = $info[32]<br> Destreza: $info[27] = $info[33]<br> Constituição: $info[28] = $info[34]<br> inteligência: $info[29] = $info[35]<br> Sabedoria: $info[30] = $info[36]<br> Carisma: $info[31] = $info[37]<br><br>
				</div></div>
				<center><div id='ficha_pronta'><div id='Texto11'>";
				$ficha->setFicha($info[0],$info[1],$info[2],$info[3],$info[4],$info[5],$info[6],$info[7],$info[8],$info[9],$info[10],$info[11],$info[12],$info[13],$info[14],$info[15],$info[16],$info[17],$info[18],$info[19],$info[20],$info[21],$info[22],$info[23],$info[24],$info[25],$info[26],$info[27],$info[28],$info[29],$info[30],$info[31]);
				$ficha->mostraFicha();
				$ficha->sessionar($info);
				
				if(!empty($_SESSION['id'])){
				$cod = "$info[24]|$info[0]|$info[1]|$info[2]|$info[3]|$info[4]|$info[5]|$info[6]|$info[7]|$info[8]|$info[9]|$info[10]|$info[11]|$info[12]|$info[13]|$info[14]|$info[15]|$info[16]|$info[17]|$info[18]|$info[19]|$info[20]|$info[21]|$info[22]|$info[23]|$info[25]|$info[26]|$info[27]|$info[28]|$info[29]|$info[30]|$info[31]|$info[32]|$info[33]|$info[34]|$info[35]|$info[36]|$info[37]|$info[38]|$info[39]|$info[40]|$info[41]";
				$_SESSION['cod']=$cod;
				echo "<br><br><div class='col s12' id='Texto17'><span class='flow-text'>O botão 'Gerar' só está disponível para você que efetuou o login.<br>
				Utilize ele para salvar a ficha gerada no seu perfil:</span></div>
				<center><form method='POST' action='pdf.php'>
				<input id='butGer' type='submit' name='salvar' value=''><br>";
				}
				
				echo "<form method='POST' action='pdf.php'>
				<center><input id='butPro' type='submit' value=''></center></div>";


		
			echo '
			</div></center>
			
			</div>';
		
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