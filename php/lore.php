<?php
	session_start();
	include_once '../php/classes/user.class.php';
	$user = new User;
?>
<!DOCTYPE html>
  <html>
    <head>
	<title>Arquivo Goblin</title>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="../css/materialize.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="../css/custom.css"  media="screen,projection"/>
<link href="https://fonts.googleapis.com/css?family=MedievalSharp|Saira+Stencil+One|Oswald&display=swap" rel="stylesheet"> 
	<link rel="icon" type="imagem/png" href="../images/Extra/favicon.png" />

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0"/>
    </head>
    <body>
<?php
		include_once 'cabecalho.php';

		include_once 'side-nav.php';
		echo '<div id="fundo1">';
				

	?>
		<div id="div_lore">
			
		
			<br>
			
	<div id="text1"><div class="hide-on-med-and-up">
			<select name="classe" id="lore" onchange="classeSmall(this.value)" required>
			  <option value="" selected disabled>Escolha sua classe</option>
			  <option value="1" class="circle right" data-icon="../images/Simbolos/Barbaro.png">Bárbaro</option>
			  <option value="2" class="circle right" data-icon="../images/Simbolos/Bardo.png">Bardo</option>
			  <option value="3" class="circle right" data-icon="../images/Simbolos/Bruxo.png">Bruxo</option>
			  <option value="4" class="circle right" data-icon="../images/Simbolos/Clerigo.png">Clérigo</option>
			  <option value="5" class="circle right" data-icon="../images/Simbolos/Druida.png">Druida</option>
			  <option value="6" class="circle right" data-icon="../images/Simbolos/Feiticeiro.png">Feiticeiro</option>
			  <option value="7" class="circle right" data-icon="../images/Simbolos/Guerreiro.png">Guerreiro</option>
			  <option value="8" class="circle right" data-icon="../images/Simbolos/Ladino.png">Ladino</option>
			  <option value="9" class="circle right" data-icon="../images/Simbolos/Mago.png">Mago</option>
			  <option value="10" class="circle right" data-icon="../images/Simbolos/Monge.png">Monge</option>
			  <option value="11" class="circle right" data-icon="../images/Simbolos/Paladino.png">Paladino</option>
			  <option value="12" class="circle right" data-icon="../images/Simbolos/Patrulheiro.png">Patrulheiro</option>
			</select>
			</div><hr>
		  <div class="row"><div class="col s15"><span class="flow-text"><font id="texto1">Descubra sua Classe</font></span></div></div><br>

      <div class="col sl2"><span class="flow-text"><font id="texto2">Esse é o Arquivo Goblin.
	Uma biblioteca forrada por pergaminhos antigos. 
Os arquivos passam o conhecimento deixado pelo falecido goblin sorridente, que entrou em contato com diversos aventureiros durante todos os seus anos de vida. 
Clique sobre os botões para descobrir as informações de todas as classes do jogo.</font> </span></div>
<hr>

	  </div>

		<br>
		<br>
		
		
		
		
			<?php include_once 'lore_form.php';
			
		echo '</div>';
		echo "</br>";
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
        