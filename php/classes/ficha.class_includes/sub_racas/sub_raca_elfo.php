<?php
switch ($this->sub_raca_elfo) {
	case 'Alto Elfo':
		print('<h3>Alto Elfo<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = array(

		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=95"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=16"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=17"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=18")
		);
		
		$hab_sub_rac_nome = null;
		$hab_sub_rac_cod = array(16,17,18);
		array_push($hab_rac_cod,16,17,18);
		foreach ($hab_sub_rac_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_rac_nome from hab_rac where hab_rac_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_rac_nome .= $row_hab['hab_rac_nome']."
			";
			$hab_rac_nome = (str_replace(" - $this->sub_raca_elfo", "", $hab_rac_nome));
		}
		$_SESSION['hab_rac_cod'] = $hab_rac_cod;
		$_SESSION['hab_rac'] = $hab_rac_nome;

		$i = 0;
		
		while($i <= 3){
		
		$registros = mysqli_num_rows($consulta[$i]);

		while($exibirRegistros = mysqli_fetch_array($consulta[$i])){
			$nome_rac = $exibirRegistros[0];
			$desc_rac = $exibirRegistros[1];

			print("<h5>$nome_rac</h5>");
			print("<h6>$desc_rac</h6>");
		}
		
		$i++;
	}
	break;

	case 'Elfo da Floresta':
		print('<h3>Elfo da Floresta<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = array(

		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=96"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=16"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=19"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=20")
		);
		
		$hab_sub_rac_nome = null;
		$hab_sub_rac_cod = array(16,19,20);
		array_push($hab_rac_cod,16,19,20);
		foreach ($hab_sub_rac_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_rac_nome from hab_rac where hab_rac_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_rac_nome .= $row_hab['hab_rac_nome']."
			";
			$hab_rac_nome = (str_replace(" - $this->sub_raca_elfo", "", $hab_rac_nome));
		}
		$_SESSION['hab_rac_cod'] = $hab_rac_cod;
		$_SESSION['hab_rac'] = $hab_rac_nome;

		$i = 0;
		
		while($i <= 3){
		
		$registros = mysqli_num_rows($consulta[$i]);

		while($exibirRegistros = mysqli_fetch_array($consulta[$i])){
			$nome_rac = $exibirRegistros[0];
			$desc_rac = $exibirRegistros[1];

			print("<h5>$nome_rac</h5>");
			print("<h6>$desc_rac</h6>");
		}
		
		$i++;
	}
	break;

	case 'Elfo Negro (Drow)':
		print('<h3>Elfo Negro (Drow)<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = array(

		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=97"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=21"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=22"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=23"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=24")
		);
		
		$hab_sub_rac_nome = null;
		$hab_sub_rac_cod = array(21,22,23,24);
		array_push($hab_rac_cod,21,22,23,24);
		foreach ($hab_sub_rac_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_rac_nome from hab_rac where hab_rac_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_rac_nome .= $row_hab['hab_rac_nome']."
			";
			$hab_rac_nome = (str_replace(" - $this->sub_raca_elfo", "", $hab_rac_nome));
		}
		$_SESSION['hab_rac_cod'] = $hab_rac_cod;
		$_SESSION['hab_rac'] = $hab_rac_nome;

		$i = 0;
		
		while($i <= 4){
		
		$registros = mysqli_num_rows($consulta[$i]);

		while($exibirRegistros = mysqli_fetch_array($consulta[$i])){
			$nome_rac = $exibirRegistros[0];
			$desc_rac = $exibirRegistros[1];

			print("<h5>$nome_rac</h5>");
			print("<h6>$desc_rac</h6>");
		}
		
		$i++;
	}
	break;
}
?>