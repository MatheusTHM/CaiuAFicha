<?php
switch ($this->sub_raca_anao) {
	case 'Anão da Colina':
		print('<h3>Anão da Colina<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = array(

		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=93"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=11")
		);
		
		$hab_sub_rac_nome = null;
		$hab_sub_rac_cod = array(11);
		array_push($hab_rac_cod,11);
		foreach ($hab_sub_rac_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_rac_nome from hab_rac where hab_rac_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_rac_nome .= $row_hab['hab_rac_nome']."
			";
			
			$hab_rac_nome = (str_replace(" - $this->sub_raca_anao", "", $hab_rac_nome));
		}
		$_SESSION['hab_rac_cod'] = $hab_rac_cod;
		$_SESSION['hab_rac'] = $hab_rac_nome;

		$i = 0;
		
		while($i <= 1){
		
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

	case 'Anão da Montanha':
		print('<h3>Anão da Montanha<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = array(

		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=92"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=12")
		);
		
		$hab_sub_rac_nome = null;
		$hab_sub_rac_cod = array(12);
		array_push($hab_rac_cod,12);
		foreach ($hab_sub_rac_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_rac_nome from hab_rac where hab_rac_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_rac_nome .= $row_hab['hab_rac_nome']."
			";
			$hab_rac_nome = (str_replace(" - $this->sub_raca_anao", "", $hab_rac_nome));
		}
		$_SESSION['hab_rac_cod'] = $hab_rac_cod;
		$_SESSION['hab_rac'] = $hab_rac_nome;

		$i = 0;
		
		while($i <= 1){
		
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