<?php
	session_start();
	include_once '../php/classes/user.class.php';
	include_once '../php/classes/conexao.class.php';
	include_once '../php/classes/ficha.class.php';

	$user = new User;

	$conectar = new conexao;
	
	$conexao = $conectar->getConexao();
	
	$cmd = "select * from talento";
	
	$consulta = mysqli_query($conexao, $cmd);
	
	$registros = mysqli_num_rows($consulta);
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

		<div class="container_fichas">
		  <div class="row">
		    <div class="col s12"><span class="flow-text"><font id="texto3">É hora de criar o seu aventureiro!</font></span></div>
		    <div class="col s12"><span class="flow-text"><font id="texto2">Aqui você pode moldar seu personagem do modo que preferir.</font></span></div>
		    <div class="col s12"><span class="flow-text"><font id="texto2">Defina as informações básicas e em seguida será direcionado para a escolha de seus atributos.<p></font></span></div>
		  </div>
			<BR>
				<form id="formFicha" name="formFicha" action="atributos.php" method="POST" autocomplete="off">
					<div class="input-field col s12">
					<input type="text" name="personagem" placeholder="Nome do personagem" required autofocus>
						<select name="raca" id="raca" onchange="checarR(this.id,this.value)" required>
					  <option value="" selected >Escolha sua raça</option>
					  <option value="1" class="circle right" data-icon="../images/Icones/Anão.png">Anão</option>
					  <option value="2" class="circle right" data-icon="../images/Icones/Elfo.png">Elfo</option>
					  <option value="3" class="circle right" data-icon="../images/Icones/Halfling.png">Halfling</option>
					  <option value="4" class="circle right" data-icon="../images/Icones/Humano.png">Humano</option>
					  <option value="5" class="circle right" data-icon="../images/Icones/Draconato.png">Draconato</option>
					  <option value="6" class="circle right" data-icon="../images/Icones/Gnomo.png">Gnomo</option>
					  <option value="7" class="circle right" data-icon="../images/Icones/Meio-Elfo.png">Meio-Elfo</option>
					  <option value="8" class="circle right" data-icon="../images/Icones/Meio-Orc.png">Meio-Orc</option>
					  <option value="9" class="circle right" data-icon="../images/Icones/Tiefling.png">Tiefling</option>
					</select>
						<label>Raça</label>
					
					<select name="sub-raca-anao" id="racaA" onchange="mostraClasse(this.value)">
					  <option value="0" selected>Escolha sua sub-raça</option>
					  <option value="1.1" class="circle right" data-icon="../images/Icones/AnãoColina.png">Anão da Colina</option>
					  <option value="1.2" class="circle right" data-icon="../images/Icones/AnãoMontanha.png">Anão da Montanha</option>
					</select>

					<select name="sub-raca-elfo" id="racaE" onchange="mostraClasse(this.value)">
					  <option value="0" selected>Escolha sua sub-raça</option>
					  <option value="2.1" class="circle right" data-icon="../images/Icones/AltoElfo.png">Alto Elfo</option>
					  <option value="2.2" class="circle right" data-icon="../images/Icones/ElfoFloresta.png">Elfo da Floresta</option>
					  <option value="2.3" class="circle right" data-icon="../images/Icones/ElfoNegro.png">Elfo Negro (Drow)</option>
					</select>

					<select name="sub-raca-halfling" id="racaH" onchange="mostraClasse(this.value)">
					  <option value="0" selected>Escolha sua sub-raça</option>
					  <option value="3.1" class="circle right" data-icon="../images/Icones/HalflingPé.png">Halfling Pés Leves</option>
					  <option value="3.2" class="circle right" data-icon="../images/Icones/HalflingRobusto.png">Halfling Robusto</option>
					</select>

					<select name="sub-raca-humano" id="racaHu" onchange="mostraClasse(this.value)">
					  <option value="0" selected>Escolha sua sub-raça</option>
					  <option value="4.1" class="circle right" data-icon="../images/Icones/HumanoComum.png">Humano Comum</option>
					  <option value="4.2" class="circle right" data-icon="../images/Icones/HumanoVariante.png">Humano Variante</option>
					</select>

					<select name="sub-raca-gnomo" id="racaG" onchange="mostraClasse(this.value)">
					  <option value="0" selected>Escolha sua sub-raça</option>
					  <option value="6.1" class="circle right" data-icon="../images/Icones/GnomoFloresta.png">Gnomo da Floresta</option>
					  <option value="6.2" class="circle right" data-icon="../images/Icones/GnomoRochas.png">Gnomo das Rochas</option>
					</select>



						<select name="classe" id="classe" onchange="mostraTende(), checarC(this.id,this.value)" required >
						  <option value="" selected >Escolha sua classe</option>
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
						
						<select name="arq-bruxoF" id="arq-bruxoF" onchange="mostraNiv()"><!--Fonte de poder-->
						  <option value="0" selected>Escolha seu Patrono Transcendental</option>
						  <option value="1">A Arquifada</option>
						  <option value="2">O Corruptor</option>
						  <option value="3">O Grande Antigo</option>
						</select>
						
						<select name="arq-cle" id="arq-cle" onchange="mostraNiv(),mostraAnte()">
						  <option value="0" selected>Escolha seu Domínio Divino</option>
						  <option value="1">Domínio do Conhecimento</option>
						  <option value="2">Domínio da Enganação</option>
						  <option value="3">Domínio da Guerra</option>
						  <option value="4">Domínio da Luz</option>
						  <option value="5">Domínio da Natureza</option>
						  <option value="6">Domínio da Tempestade</option>
						  <option value="7">Domínio da Vida</option>
						</select>
						
						<select name="arq-feit" id="arq-feit" onchange="mostraNiv(),mostraAnte()">
						  <option value="0" selected>Escolha sua Origem de Feitiçaria</option>
						  <option value="1">Linhagem Dracônica</option>
						  <option value="2">Magia Selvagem</option>
						</select>
						
						<select name="nivel" id="nivel" onchange="confirmaNC(this.id,this.value),mostraAnte()" required >
						  <option value="" selected >Escolha seu nível</option>
						  <option value="1">1º Nível</option>
						  <option value="2">2º Nível</option>
						  <option value="3">3º Nível</option>
						  <option value="4">4º Nível</option>
						  <option value="5">5º Nível</option>
						  <option value="6">6º Nível</option>
						  <option value="7">7º Nível</option>
						  <option value="8">8º Nível</option>
						  <option value="9">9º Nível</option>
						  <option value="10">10º Nível</option>
						  <option value="11">11º Nível</option>
						  <option value="12">12º Nível</option>
						  <option value="13">13º Nível</option>
						  <option value="14">14º Nível</option>
						  <option value="15">15º Nível</option>
						  <option value="16">16º Nível</option>
						  <option value="17">17º Nível</option>
						  <option value="18">18º Nível</option>
						  <option value="19">19º Nível</option>
						  <option value="20">20º Nível</option>
						</select>
						
						
						<select name="arq-bar" id="arq-bar" onchange="mostraAnte()">
					  <option value="0" selected>Escolha seu Caminho Primitivo</option>
					  <option value="1">Caminho do Furioso</option>
					  <option value="2">Caminho do Guerreiro Totêmico</option>
					</select>
					
					
					<select name="arq-bard" id="arq-bard" onchange="mostraAnte()">
					  <option value="0" selected>Escolha seu Colégio de Bardo</option>
					  <option value="1">Colégio do Conhecimento</option>
					  <option value="2">Colégio da Bravura</option>
					</select>	
					
					<select name="arq-bruxoP" id="arq-bruxoP" onchange="mostraAnte()"><!--Pacto-->
					  <option value="0" selected>Escolha sua Dádiva do Pacto</option>
					  <option value="1">Pacto da Corrente</option>
					  <option value="2">Pacto da Lâmina</option>
					  <option value="3">Pacto do Tomo</option>
					</select>
					
					<select name="arq-dru" id="arq-dru" onchange="mostraAnte()">
					  <option value="0" selected>Escolha seu Círculo Druídico</option>
					  <option value="1">Círculo da Terra</option>
					  <option value="2">Círculo da Lua</option>
					</select>
					
					<select name="arq-gue" id="arq-gue" onchange="mostraAnte()">
					  <option value="0" selected>Escolha seu Arquétipo Marcial</option>
					  <option value="1">Campeão</option>
					  <option value="2">Cavaleiro Arcano</option>
					  <option value="3">Mestre de Batalha</option>
					</select>
					
					<select name="arq-ladi" id="arq-ladi" onchange="mostraAnte()">
					  <option value="0" selected>Escolha seu Arquétipo de Ladino</option>
					  <option value="1">Assassino</option>
					  <option value="2">Ladrão</option>
					  <option value="3">Trapaceiro Arcano</option>
					</select>
					
					<select name="arq-mago" id="arq-mago" onchange="mostraAnte()">
					  <option value="0" selected>Escolha sua Tradição Arcana</option>
					  <option value="1">Escola de Abjuração</option>
					  <option value="2">Escola de Adivinhação</option>
					  <option value="3">Escola de Conjuração</option>
					  <option value="4">Escola de Encantamento</option>
					  <option value="5">Escola de Evocação</option>
					  <option value="6">Escola de Ilusão</option>
					  <option value="7">Escola de Necromancia</option>
					  <option value="8">Escola de Transmutação</option>
					</select>
					
					<select name="arq-mong" id="arq-mong" onchange="mostraAnte()">
					  <option value="0" selected>Escolha sua Tradição Monástica</option>
					  <option value="1">Caminho da Mão Aberta</option>
					  <option value="2">Caminho da Sombra</option>
					  <option value="3">Caminho dos Quatro Elementos</option>
					</select>
					
					<select name="arq-pala" id="arq-pala" onchange="mostraAnte()">
					  <option value="0" selected>Escolha seu Juramento Sagrado</option>
					  <option value="1">Juramento de Devoção</option>
					  <option value="2">Juramento dos Anciões</option>
					  <option value="3">Juramento de Vingança</option>
					</select>
					
					<select name="arq-patr" id="arq-patr" onchange="mostraAnte()">
					  <option value="0" selected>Escolha seu Conclave de Patrulheiro</option>
					  <option value="1">Conclave da Besta</option>
					  <option value="2">Conclave do Caçador</option>
					  <option value="3">Conclave do Rastreador Subterrâneo</option>
					</select>
						
						

						<select name="antecedente" id="antecedente" onchange="build(this.value)" required >
					  <option value="" selected >Escolha seu antecedente</option>
					  <option value="1" class="circle right" data-icon="../images/Icones/acólito.png">Acólito</option>
					  <option value="2" class="circle right" data-icon="../images/Icones/artesao.png">Artesão de Guilda</option>
					  <option value="3" class="circle right" data-icon="../images/Icones/artista.png">Artista</option>
					  <option value="4" class="circle right" data-icon="../images/Icones/charlatao.png">Charlatão</option>
					  <option value="5" class="circle right" data-icon="../images/Icones/Criminoso.png">Criminoso</option>
					  <option value="6" class="circle right" data-icon="../images/Icones/eremita.png">Eremita</option>
					  <option value="7" class="circle right" data-icon="../images/Icones/forasteiro.png">Forasteiro</option>
					  <option value="8" class="circle right" data-icon="../images/Icones/heroi.png">Herói do Povo</option>
					  <option value="9" class="circle right" data-icon="../images/Icones/marinheiro.png">Marinheiro</option>
					  <option value="10" class="circle right" data-icon="../images/Icones/nobre.png">Nobre</option>
					  <option value="11" class="circle right" data-icon="../images/Icones/orfao.png">Órfão</option>
					  <option value="12" class="circle right" data-icon="../images/Icones/sabio.png">Sábio</option>
					  <option value="13" class="circle right" data-icon="../images/Icones/soldado.png">Soldado</option>
					</select>
						
						<select name="atitude" id="atitude" required >
							<option value="" selected >Escolha sua Atitude Perante Adversidades</option>
							<option value="1">Leal</option>
							<option value="2">Neutro</option>
							<option value="3">Caótico</option>
						</select>
						<select name="moralidade" id="moralidade" required >
							<option value="" selected >Escolha sua Moralidade</option>
							<option value="1">Bom</option>
							<option value="2">Neutro</option>
							<option value="3">Mal</option>
						</select>
						<input type="submit" id="butEnv" name="enviar" value="">
						<BR> <BR> <BR><BR> Pag: 1/3
					</div>
				</form>
		<br><br><br>
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