<?php
session_start();
	$_SESSION['root'] = $_SERVER['DOCUMENT_ROOT'].'/tcc';
	include_once 'php/classes/ficha.class.php';
	
	$ficha = new ficha;
	$ficha->desSessionar();
?>
<!DOCTYPE html>
  <html>
    <head>
	<title>Caiu a Ficha</title>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="css/custom.css"  media="screen,projection"/>
	  <link href="https://fonts.googleapis.com/css?family=Allerta+Stencil&display=swap" rel="stylesheet">
	<link rel="icon" type="imagem/png" href="images/Extra/favicon.png" />
<link href="https://fonts.googleapis.com/css?family=Saira+Stencil+One|Oswald&display=swap" rel="stylesheet"> 

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" charset="UTF-8" content="width=device-width, initial-scale=1.0"/>
    </head>
<!--background="images/fundo.jpg"-->
    <body>			 
		<nav class="nav-extended fixed blue-grey darken-3">
			  <div class="nav-wrapper blue-grey darken-3">
				<a href="<?php $_SERVER['PHP_SELF']; ?>" class="brand-logo center"><img src="images/Extra/logo.png" class="logo"></a>
				<ul class="left">
					<a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>
				</ul>
				<?php
					if(!empty($_SESSION['id'])){
						echo "<ul class='right'>
							<li><a class='dropdown-trigger btn hide-on-small-only' data-target='dropdown1'>Bem Vindo, ".$_SESSION['nome']."</a></li>
						</ul>";
					}else{
						echo "<ul class='right'>
							<a href='php/login.php'>Logar</a>
						</ul>";
					}
				?>
				
				<ul id='dropdown1' class='dropdown-content'>
				  <li><a href="php/sair.php">Deslogar</a></li>
				</ul>

			  </div>
			  <div class="nav-content">
			  <ul class="tabs tabs-transparent">
			  <div class="brand-logo center hide-on-med-and-down">
				<li class="tab s2"><a href="php/lore.php">ARQUIVO GOBLIN</a></li>
				<li class="tab s2"><a href="php/criar.php">ÁREA DE CRIAÇÃO</a></li>
				<li class="tab s2"><a href="php/fichas.php">SUAS FICHAS</a></li>
			  </ul>
			  </div>
			  </div>
		</nav>
			<hr>
			
<div id="fundo">
		<div id="div_home">		
		<div id="text2"><hr>			
		<div class="row"><div class="col s12"><span class="flow-text"><font id="texto1">Crie Fichas D&D </font></span></div><br>
      <div class="col sl2"><span class="flow-text"><font id="texto2">O "Caiu a Ficha" torna a criação de personagens muito mais dinâmica e prática.</font> </span></div>
      <div class="col s12"><span class="flow-text"><font id="texto2">Faça login ou cadastre-se, e aproveite nosso sistema de criação de fichas totalmente dedicado aos fãs. E não se preocupe, guardaremos todas as fichas criadas em seu perfil.</font></span></div>
      <div class="col s12"><span class="flow-text"><font id="texto2">Não sabe qual personagem usar em seu próximo RPG? Utilize o "Arquivo Goblin" e entenda do que se trata cada uma das doze classes do Dungeons And Dragons.</font></span></div>
	  </div><hr>
	  		
	  </div>
	  	  </br></br></br></br></br></br></br></br></br></br></br></br></br>
			<center><?php
		if(empty($_SESSION['id'])){	
		echo"<div class='cont1'>	
			<form type='post' action='php/login.php'>
				<label for='logBtn'><img src='images/Buttons/buttonl.jpg' class='btnimg hoverable hide-on-small-only'></label>
				<button class='lcabtn' id='logBtn'></button></a>
			</form>
		</div>
		</br>
		<div class='cont2'>
			<form type='post' action='php/cadastro.php'>
				<label for='cadBtn'><img src='images/Buttons/buttonc.jpg' class='btnimg hoverable hide-on-small-only'></label>
				<button class='lcabtn' id='cadBtn'></button></a>
			</form>
		</div>";
		}else{
		}
		?><center>
		</div>
		<br>
			
		<br>
		
		
								<ul id="slide-out" class="sidenav" >
									<li>
									<nav class="blue-grey darken-3">
									 <div class="background">
										<center><img src="images/Extra/lgmenu.png" width= 85%></center>
									  </div>
									</nav></li>
									<li><a href="php/lore.php"><i class="material-icons">book</i>ARQUIVO GOBLIN</a></li>
									<li><a href="php/criar.php"><i class="material-icons">add_box</i>ÁREA DE CRIAÇÃO</a></li>
									<li><a href="php/fichas.php"><i class="material-icons">description</i>SUAS FICHAS</a></li>
									<li><div class="divider"></div></li>
									<center><li>HEY!!! Sua Ficha Ainda Não Caiu?</li></center>
									<li><div class="divider"></div></li>
								<?php
									if(!isset($_SESSION['id'])){
										echo "<li><a href='php/login.php'><i class='material-icons'>account_box</i>LOGIN</a></li>
											<li><a href='php/cadastro.php'><i class='material-icons'>chrome_reader_mode</i>CADASTRAR</a></li>
											<li><div class='divider'></div></li>";
									}
								?>
									 <div class="background">
									<center><img src="images/Extra/taverneiro.png" width= 85%></center>
									  </div>
								  </ul>
								  
			<!--<div id="modal"> 
			
			
			<a href="" id="close">X</a>
			<h1 class="red-text center-align">ATENÇÃO!</h1>
			<h3 class="white-text center-align">Todos os nomes, sejam de raças, classes, magias, entre outros
			possuem direitos reservados apenas a  Wizards of the Coast LLC. <br>
			<br>Este site é apenas um material de fãs para fãs, sem nenhum objetivo monetário.</h3>			
			
		</div>-->
			
			
			
			

			

		
	</div>
		<footer class="page-footer blue-grey darken-3">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">CAIU A FICHA</h5>
                <p class="grey-text text-lighten-4" align="justify">O "Caiu a Ficha" é um site criado de fãs para fãs. Não desejamos lucrar através desta página, apenas desejamos
													ampliar o alcance do RPG no Brasil. Todo o conteúdo referente ao D&D (Dungeons And Dragons) possui seus direitos
													reservados pela Wizards of the Coast LLC.</p>
              </div>
              <div class="col l5 offset-l1 s12">
                <h5 class="white-text">Links</h5>
                <ul class="end">
				  <div class="hide-on-med-and-up">
				   <li class=""><a href="php/lore.php">| Lore |</a></li>
				   <li class=""><a href="php/criar.php">| Área de Criação |</a></li>
				   <li class=""><a class="" href="#test3">| Fichas |</a></li>
				  </div>
							<li><a href="https://www.facebook.com/Caiu-a-Ficha-105201750882520/" target="_blank" class="waves-effect"> <img src="images/social/facebook.png" 	class="icon"> </a></li>
							<li><a href="https://twitter.com/CaiuFicha" target="_blank" class="waves-effect"> <img src="images/social/twitter.png" 	class="icon"> </a></li>
							<li><a href="https://www.instagram.com/caiu_ficha/" target="_blank" class="waves-effect"> <img src="images/social/instagram.png" class="icon"> </a></li>
							<br><h5>caiuaficharpg@gmail.com<h5>
				</ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            © 2019 Copyright Text
            </div>
          </div>
		</footer>
		<!--JQuery BEFORE JAVASCRIPT at end of body for optimized loading-->
      <script type="text/javascript" src="jquery/jquery-3.4.1.js"></script>
      <script type="text/javascript" src="jquery/custom_q.js"></script>
       <!--JavaScript at end of body for optimized loading-->
	   <script type="text/javascript" src="../js/custom.js"></script>
      <script type="text/javascript" src="js/materialize.js"></script>
    </body>
  </html>  