<?php
switch (true) {
	case ($this->arq_gue == 'Mestre de Batalha' and $this->nivel >2 && $this->nivel <7):
		print('<h3>Mestre de Batalha<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=232"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=233"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=234")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(232,233,234);
		array_push($hab_class_cod,232,233,234);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_gue - ", "", $hab_arq_class_nome));
			
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

	case ($this->arq_gue == 'Mestre de Batalha' and $this->nivel >6 && $this->nivel <10):
		print('<h3>Mestre de Batalha<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=232"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=233"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=234"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=235")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(232,233,234,235);
		array_push($hab_class_cod,232,233,234,235);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_gue - ", "", $hab_arq_class_nome));
			
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

	case ($this->arq_gue == 'Mestre de Batalha' and $this->nivel >9 && $this->nivel <15):
		print('<h3>Mestre de Batalha<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=232"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=233"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=234"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=235"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=236")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(232,233,234,235,236);
		array_push($hab_class_cod,232,233,234,235,236);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_gue - ", "", $hab_arq_class_nome));
			
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

	case ($this->arq_gue == 'Mestre de Batalha' and $this->nivel >14 && $this->nivel <21):
		print('<h3>Mestre de Batalha<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=232"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=233"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=234"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=235"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=236"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=237")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(232,233,234,235,236,237);
		array_push($hab_class_cod,232,233,234,235,236,237);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_gue - ", "", $hab_arq_class_nome));
			
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