<?php
switch (true) {
	case ($this->arq_mago == 'Escola de Abjuração' and $this->nivel >1 && $this->nivel <6):
		print('<h3>Escola de Abjuração<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=272"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=273"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=274")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(272,273,274);
		array_push($hab_class_cod,272,273,274);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_mago - ", "", $hab_arq_class_nome));
			
		}
		$_SESSION['hab_class_cod'] = $hab_class_cod;
		$_SESSION['hab_class'] .= $hab_arq_class_nome;

		$i = 0;
		
		while($i <= 2){
		
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

	case ($this->arq_mago == 'Escola de Abjuração' and $this->nivel >5 && $this->nivel <10):
		print('<h3>Escola de Abjuração<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=272"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=273"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=274"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=275")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(272,273,274,275);
		array_push($hab_class_cod,272,273,274,275);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_mago - ", "", $hab_arq_class_nome));
			
		}
		$_SESSION['hab_class_cod'] = $hab_class_cod;
		$_SESSION['hab_class'] .= $hab_arq_class_nome;

		$i = 0;
		
		while($i <= 3){
		
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

	case ($this->arq_mago == 'Escola de Abjuração' and $this->nivel >9 && $this->nivel <14):
		print('<h3>Escola de Abjuração<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=272"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=273"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=274"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=275"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=276")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(272,273,274,275,276);
		array_push($hab_class_cod,272,273,274,275,276);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_mago - ", "", $hab_arq_class_nome));
			
		}
		$_SESSION['hab_class_cod'] = $hab_class_cod;
		$_SESSION['hab_class'] .= $hab_arq_class_nome;

		$i = 0;
		
		while($i <= 4){
		
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

	case ($this->arq_mago == 'Escola de Abjuração' and $this->nivel >13 && $this->nivel <21):
		print('<h3>Escola de Abjuração<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=272"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=273"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=274"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=275"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=276"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=277")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(272,273,274,275,276,277);
		array_push($hab_class_cod,272,273,274,275,276,277);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_mago - ", "", $hab_arq_class_nome));
			
		}
		$_SESSION['hab_class_cod'] = $hab_class_cod;
		$_SESSION['hab_class'] .= $hab_arq_class_nome;

		$i = 0;
		
		while($i <= 5){
		
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