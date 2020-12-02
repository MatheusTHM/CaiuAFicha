<?php
	session_start();
	include_once '../php/classes/conexao.class.php';
	include_once '../php/classes/user.class.php';
	include_once '../php/classes/ficha.class.php';

	$conectar = new conexao();
	$ficha = new ficha();

	if(!isset($_POST['raca'])){
		header("Location: ../index.php");
	}
	
	
	
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

<link href="https://fonts.googleapis.com/css?family=MedievalSharp|Saira+Stencil+One|Oswald&display=swap" rel="stylesheet"> 

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0"/>
    </head>
    <body>
	<?php
		include_once 'cabecalho.php';

		include_once 'side-nav.php';
		echo '<div id="fundoA">';
		
	?>

		<div id="div_atributos">
<div class="row">
		    <div class="col s12"><span class="flow-text"><center><font id="texto3">Distribua seus pontos:</font></center></span></div>
		  </div>
			<?php
				$ficha = new Ficha;
				$info = ($ficha->filtro($_POST['raca'],$_POST['sub-raca-anao'],$_POST['sub-raca-elfo'],$_POST['sub-raca-halfling'],$_POST['sub-raca-humano'],$_POST['sub-raca-gnomo'],$_POST['classe'], $_POST['arq-bar'],$_POST['arq-bard'], $_POST['arq-bruxoF'],$_POST['arq-bruxoP'], $_POST['arq-cle'],$_POST['arq-dru'], $_POST['arq-feit'],$_POST['arq-gue'], $_POST['arq-ladi'], $_POST['arq-mago'], $_POST['arq-mong'], $_POST['arq-pala'], $_POST['arq-patr'], $_POST['nivel'], $_POST['antecedente'], $_POST['personagem'], $_POST['atitude'], $_POST['moralidade'],'1','1','1','1','1','1','0','0','0','0','0'))/*$_POST['forca'], $_POST['destreza'], $_POST['constituicao'],$_POST['inteligencia'], $_POST['sabedoria'], $_POST['carisma']*/;
				$infoMandar = array($_POST['raca'],$_POST['sub-raca-anao'],$_POST['sub-raca-elfo'],$_POST['sub-raca-halfling'],$_POST['sub-raca-humano'],$_POST['sub-raca-gnomo'],$_POST['classe'], $_POST['arq-bar'],$_POST['arq-bard'], $_POST['arq-bruxoF'],$_POST['arq-bruxoP'], $_POST['arq-cle'],$_POST['arq-dru'], $_POST['arq-feit'],$_POST['arq-gue'], $_POST['arq-ladi'], $_POST['arq-mago'], $_POST['arq-mong'], $_POST['arq-pala'], $_POST['arq-patr'], $_POST['nivel'], $_POST['antecedente'], $_POST['personagem'], $_POST['atitude'], $_POST['moralidade'],'1','1','1','1','1','1')/*$_POST['forca'], $_POST['destreza'], $_POST['constituicao'],$_POST['inteligencia'], $_POST['sabedoria'], $_POST['carisma']*/;
				$inc = $ficha->atributosRaca($_POST['raca'],$info[0],$info[1],$info[2],$info[3],$info[4],$info[5],$info[20],$info[6]);
				echo '<div id="atrib0">';
				echo '<div class="dadosP">';
				echo '<div class="col s12"><span class="flow-text"><div id="Texto4">Informações básicas:<br><br></div>';
				echo '<div id="Texto8">Nome: '.($info[24]);
				echo "<br>";
				echo 'Raça: '.($info[0]);
				echo "<br>";
				echo 'Classe: '.($info[6]);
				echo "<br>";
				echo 'Nível: '.($info[20]);
				echo "<br>";
				echo 'Antecedente: '.($info[21]);
				echo "<br>";
				echo 'Alinhamento: '.($info[25]);
				echo "<br><br>
						<div id='Texto16'>Pontos extras: pontos ganhos ao subir de nível.</div>";
				echo "</span></div></div></div>";
				
				echo'<form name="formFicha" id="formFicha" method="POST" action="ficha_pronta.php">';
				foreach($infoMandar as $mandar)
				{
					echo '<input type="hidden" name="infoM[]" value="'.$mandar.'">';
				}
				
				
			?>				

				
			
				<div id="atrib1">
				<div  class="col s12" id="Texto5"><span class="flow-text">
					<?php
				echo
				"<div id='Texto6' class='col sl2'><span class='flow-text'>Pontos:</span></div><input type='number' id='total' value='$inc[6]' disabled>
				<div id='Texto16' class='col sl2'><span class='flow-text'>Pontos extras*:</span></div>	
					<input type='number' id='extra' value='$inc[7]' disabled>
					<input type='number' id='extraH' value='$inc[7]' hidden disabled>
					
					 Força<input type='number' id='forca' value='$inc[0]' disabled>
									<input type='number' id='forcaH' name='forca' value='$inc[0]' hidden>
					<button type='button' class='menos' name='forca-' id='forca' onclick='aumentarT(this.id)'></button>
					<button type='button' class='mais' name='forca+' id='forca' onclick='diminuirT(this.id)'></button>
					<br>
					Destreza<input type='number' id='destreza' value='$inc[1]' disabled>
									<input type='number' id='destrezaH' name='destreza' value='$inc[1]' hidden>
					<button type='button' class='menos' name='destreza-' id='destreza' onclick='aumentarT(this.id)'></button>
					<button type='button' class='mais' name='destreza+' id='destreza' onclick='diminuirT(this.id)'></button>				
					<br>					
					Constituição<input type='number' id='constituicao' value='$inc[2]' disabled>
											<input type='number' id='constituicaoH' name='constituicao' value='$inc[2]' hidden>
					<button type='button' class='menos' name='constituicao-' id='constituicao' onclick='aumentarT(this.id)'></button>
					<button type='button' class='mais' name='constituicao+' id='constituicao' onclick='diminuirT(this.id)'></button>
					<br>			</span></div></div>


					<div  class='col s12' id='Texto5'><span class='flow-text'>
					<div id='atrib2'>
					Inteligência<input type='number' id='inteligencia' value='$inc[3]' disabled>
											<input type='number' id='inteligenciaH' name='inteligencia' value='$inc[3]' hidden>
					<button type='button' class='menos' name='inteligencia-' id='inteligencia' onclick='aumentarT(this.id)'></button>
					<button type='button' class='mais' name='inteligencia+' id='inteligencia' onclick='diminuirT(this.id)'></button>
										<br>
					Sabedoria<input type='number' id='sabedoria' value='$inc[4]' disabled>
												<input type='number' id='sabedoriaH' name='sabedoria' value='$inc[4]' hidden>
					<button type='button' class='menos' name='sabedoria-' id='sabedoria' onclick='aumentarT(this.id)'></button>
					<button type='button' class='mais' name='sabedoria+' id='sabedoria' onclick='diminuirT(this.id)'></button>
										<br>
					Carisma<input type='number' id='carisma' value='$inc[5]' disabled>
											<input type='number' id='carismaH' name='carisma' value='$inc[5]' hidden>
					<button type='button' class='menos' name='carisma-' id='carisma' onclick='aumentarT(this.id)'></button>
					<button type='button' class='mais' name='carisma+' id='carisma' onclick='diminuirT(this.id)'></button>
					<br><br><input type='reset' id='butRes' value ='Resetar'>";
					?>	
	</div></div>

						
		</DIV>

		

		
		</div>
							<div  class="col s12"><span class="flow-text">

							<div id="form_itens"> <div id="Texto9" class="col s12"><div id="Texto10">Escolha seus itens:</div>
							<br><?php $ficha->item($_POST['classe']); ?></div>					
							<center><button type="button" id="butEnv" class="null" name="enviar" value="ENVIAR" onclick="checar(this.form.total.value,this.form.extra.value)"></button></center>
							<div id="texto00"><center>Pag: 2/3</center></div><br>
							</div></div>
		</form>
		<center><div  id="avisoP"><div id="Texto7"> "Qual será meu bônus de atributo em relação a quantidade de pontos escolhida?"<a href="../images/Extra/tabela.png" target="_blank"> Clique aqui.</a></div></div></center>
		
		
					
		</div>

	<?php
		echo '</div>';
		
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