<?php
switch (true) {
	case ($this->classe == 'Clérigo' and $this->nivel == 1):
		print('<h3>Clérigo<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=420"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=421"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=422"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=423"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=424"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=425"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=102"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=103")
		);
		
		$hab_class_nome = null;
		$hab_class_cod = array(420,421,422,423,424,425,102,103);
		foreach ($hab_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_class_nome .= $row_hab['hab_class_nome']."
			";
		}
		$_SESSION['hab_class_cod'] = $hab_class_cod;
		$_SESSION['hab_class'] = $hab_class_nome;

		$i = 0;
		
		while($i <= 7){
		
		$registros = mysqli_num_rows($consulta[$i]);

		while($exibirRegistros = mysqli_fetch_array($consulta[$i])){
			$hab_class_nome = $exibirRegistros[0];
			$hab_class_desc = $exibirRegistros[1];

			print("<h5>$hab_class_nome</h5>");
			print("<h6>$hab_class_desc</h6>");
		}
		
		$i++;
	}
	break;

	case ($this->classe == 'Clérigo' and $this->nivel >1 && $this->nivel <4):
		print('<h3>Clérigo<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=420"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=421"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=422"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=423"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=424"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=425"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=102"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=103"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=104"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=105")
		);
		
		$hab_class_nome = null;
		$hab_class_cod = array(420,421,422,423,424,425,102,103,104,105);
		foreach ($hab_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_class_nome .= $row_hab['hab_class_nome']."
			";
		}
		$_SESSION['hab_class_cod'] = $hab_class_cod;
		$_SESSION['hab_class'] = $hab_class_nome;

		$i = 0;
		
		while($i <= 9){
		
		$registros = mysqli_num_rows($consulta[$i]);

		while($exibirRegistros = mysqli_fetch_array($consulta[$i])){
			$hab_class_nome = $exibirRegistros[0];
			$hab_class_desc = $exibirRegistros[1];

			print("<h5>$hab_class_nome</h5>");
			print("<h6>$hab_class_desc</h6>");
		}
		
		$i++;
	}
	break;

	case ($this->classe == 'Clérigo' and $this->nivel == 4):
		print('<h3>Clérigo<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=420"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=421"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=422"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=423"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=424"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=425"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=102"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=103"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=104"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=105"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=6")
		);
		
		$hab_class_nome = null;
		$hab_class_cod = array(420,421,422,423,424,425,102,103,104,105,6);
		foreach ($hab_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_class_nome .= $row_hab['hab_class_nome']."
			";
		}
		$_SESSION['hab_class_cod'] = $hab_class_cod;
		$_SESSION['hab_class'] = $hab_class_nome;

		$i = 0;
		
		while($i <= 10){
		
		$registros = mysqli_num_rows($consulta[$i]);

		while($exibirRegistros = mysqli_fetch_array($consulta[$i])){
			$hab_class_nome = $exibirRegistros[0];
			$hab_class_desc = $exibirRegistros[1];

			print("<h5>$hab_class_nome</h5>");
			print("<h6>$hab_class_desc</h6>");
		}
		
		$i++;
	}
	break;

	case ($this->classe == 'Clérigo' and $this->nivel >4 && $this->nivel <10):
		print('<h3>Clérigo<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=420"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=421"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=422"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=423"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=424"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=425"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=102"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=103"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=104"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=105"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=6"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=106")
		);
		
		$hab_class_nome = null;
		$hab_class_cod = array(420,421,422,423,424,425,102,103,104,105,6,106);
		foreach ($hab_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_class_nome .= $row_hab['hab_class_nome']."
			";
		}
		$_SESSION['hab_class_cod'] = $hab_class_cod;
		$_SESSION['hab_class'] = $hab_class_nome;

		$i = 0;
		
		while($i <= 11){
		
		$registros = mysqli_num_rows($consulta[$i]);

		while($exibirRegistros = mysqli_fetch_array($consulta[$i])){
			$hab_class_nome = $exibirRegistros[0];
			$hab_class_desc = $exibirRegistros[1];

			print("<h5>$hab_class_nome</h5>");
			print("<h6>$hab_class_desc</h6>");
		}
		
		$i++;
	}
	break;

	case ($this->classe == 'Clérigo' and $this->nivel >9 && $this->nivel <21):
		print('<h3>Clérigo<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=420"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=421"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=422"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=423"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=424"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=425"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=102"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=103"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=104"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=105"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=6"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=106"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=107")
		);
		
		$hab_class_nome = null;
		$hab_class_cod = array(420,421,422,423,424,425,102,103,104,105,6,106,107);
		foreach ($hab_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_class_nome .= $row_hab['hab_class_nome']."
			";
		}
		$_SESSION['hab_class_cod'] = $hab_class_cod;
		$_SESSION['hab_class'] = $hab_class_nome;

		$i = 0;
		
		while($i <= 12){
		
		$registros = mysqli_num_rows($consulta[$i]);

		while($exibirRegistros = mysqli_fetch_array($consulta[$i])){
			$hab_class_nome = $exibirRegistros[0];
			$hab_class_desc = $exibirRegistros[1];

			print("<h5>$hab_class_nome</h5>");
			print("<h6>$hab_class_desc</h6>");
		}
		
		$i++;
	}
	break;

}

?>