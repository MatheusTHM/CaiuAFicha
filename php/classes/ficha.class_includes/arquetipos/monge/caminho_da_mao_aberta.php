<?php
switch (true) {
	case ($this->arq_mong == 'Caminho da Mão Aberta' and $this->nivel >2 && $this->nivel <6):
		print('<h3>Caminho da Mão Aberta<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=341"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=342")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(341,342);
		array_push($hab_class_cod,341,342);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_mong - ", "", $hab_arq_class_nome));
			
		}
		$_SESSION['hab_class_cod'] = $hab_class_cod;
		$_SESSION['hab_class'] .= $hab_arq_class_nome;

		$i = 0;
		
		while($i <= 1){
		
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

	case ($this->arq_mong == 'Caminho da Mão Aberta' and $this->nivel >5 && $this->nivel <11):
		print('<h3>Caminho da Mão Aberta<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=341"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=342"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=343")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(341,342,343);
		array_push($hab_class_cod,341,342,343);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_mong - ", "", $hab_arq_class_nome));
			
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

	case ($this->arq_mong == 'Caminho da Mão Aberta' and $this->nivel >10 && $this->nivel <17):
		print('<h3>Caminho da Mão Aberta<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=341"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=342"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=343"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=344")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(341,342,343,344);
		array_push($hab_class_cod,341,342,343,344);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_mong - ", "", $hab_arq_class_nome));
			
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

	case ($this->arq_mong == 'Caminho da Mão Aberta' and $this->nivel >16 && $this->nivel <21):
		print('<h3>Caminho da Mão Aberta<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
	$consulta = array(

		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=341"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=342"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=343"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=344"),
		mysqli_query($conexao, "select hab_class_nome, hab_class_desc from habilidade_classe where hab_class_cod=345")
		);
		
		$hab_arq_class_nome = null;
		$hab_arq_class_cod = array(341,342,343,344,345);
		array_push($hab_class_cod,341,342,343,344,345);
		foreach ($hab_arq_class_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_class_nome from habilidade_classe where hab_class_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_arq_class_nome .= "
			".$row_hab['hab_class_nome'];
			$hab_arq_class_nome = (str_replace("$this->arq_mong - ", "", $hab_arq_class_nome));
			
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
}

?>