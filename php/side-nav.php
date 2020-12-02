 <ul id="slide-out" class="sidenav" >
									<li>
									<nav class="blue-grey darken-3">
									 <div class="background">
										<center><img src="../images/Extra/lgmenu.png" width= 85%></center>
									  </div>
									</nav></li>
									<li><a href="lore.php"><i class="material-icons">book</i>ARQUIVO GOBLIN</a></li>
									<li><a href="criar.php"><i class="material-icons">add_box</i>ÁREA DE CRIAÇÃO</a></li>
									<li><a href="fichas.php"><i class="material-icons">description</i>SUAS FICHAS</a></li>
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
									<center><img src="../images/Extra/taverneiro.png" width= 85%></center>
									  </div>
								  </ul>