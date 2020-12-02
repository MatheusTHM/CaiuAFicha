<?php
switch (true) {
	case ($this->arq_bruxoF == 'O Corruptor' and $this->nivel >0 && $this->nivel <6):
		print('<h3>O Corruptor<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=59"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=60"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=61")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(59,60,61);
		array_push($hab_class_cod,59,60,61);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_bruxoF - ", "", $hab_arq_class_nome));
			
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

	case ($this->arq_bruxoF == 'O Corruptor' and $this->nivel >5 && $this->nivel <10):
		print('<h3>O Corruptor<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=59"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=60"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=61"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=62")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(59,60,61,62);
		array_push($hab_class_cod,59,60,61,62);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_bruxoF - ", "", $hab_arq_class_nome));
			
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

	case ($this->arq_bruxoF == 'O Corruptor' and $this->nivel >9 && $this->nivel <14):
		print('<h3>O Corruptor<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=59"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=60"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=61"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=62"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=63")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(59,60,61,62,63);
		array_push($hab_class_cod,59,60,61,62,63);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_bruxoF - ", "", $hab_arq_class_nome));
			
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

	case ($this->arq_bruxoF == 'O Corruptor' and $this->nivel >13 && $this->nivel <21):
		print('<h3>O Corruptor<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=59"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=60"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=61"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=62"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=63"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=64")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(59,60,61,62,63,64);
		array_push($hab_class_cod,59,60,61,62,63,64);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_bruxoF - ", "", $hab_arq_class_nome));
			
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