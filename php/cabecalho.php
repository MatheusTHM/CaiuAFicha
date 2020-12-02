<nav class="nav-extended fixed blue-grey darken-3">
				  <div class="nav-wrapper blue-grey darken-3">
					<a href="../index.php" class="brand-logo center"><img src="../images/Extra/logo.png" class="logo"></a>
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
							<a href='../php/login.php'>Logar</a>
						</ul>";
					}
				?>
				
				<ul id='dropdown1' class='dropdown-content'>
				  <li><a href="../php/sair.php">Deslogar</a></li>
				</ul>
				
				  </div>
				  <div class="nav-content">
				  <ul class="tabs tabs-transparent">
				  <div class="brand-logo center hide-on-med-and-down">
					<li class="tab s2"><a href="../php/lore.php">ARQUIVO GOBLIN</a></li>
					<li class="tab s2"><a href="../php/criar.php">ÁREA DE CRIAÇÃO</a></li>
					<li class="tab s2"><a href="../php/fichas.php">SUAS FICHAS</a></li>
				  </ul>
				  </div>
				  </div>
			</nav>
				<hr>