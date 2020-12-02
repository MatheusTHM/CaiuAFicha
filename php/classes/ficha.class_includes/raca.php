<?php
switch ($this->raca) {
	case 'Anão':
		print('<h3>Anão<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = array(

		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=91"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=1"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=7"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=8"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=9"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=10"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=46"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=47"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=48"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=49"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=50")
		);
		
		$hab_rac_nome = null;
		$hab_rac_cod = array(1,7,8,9,10,);
		foreach ($hab_rac_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_rac_nome from hab_rac where hab_rac_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_rac_nome .= $row_hab['hab_rac_nome']."
			";
			$hab_rac_nome = (str_replace(" - $this->raca", "", $hab_rac_nome));
		}
		$_SESSION['hab_rac_cod'] = $hab_rac_cod;
		$_SESSION['hab_rac'] = $hab_rac_nome;

		$i = 0;
		
		while($i <= 10){
		
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
	
	case 'Elfo':
		print('<h3>Elfo<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = array(

		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=94"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=2"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=13"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=14"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=15"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=51"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=52"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=53"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=54"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=55")
		);
		
		$hab_rac_nome = null;
		$hab_rac_cod = array(2,13,14,15);
		foreach ($hab_rac_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_rac_nome from hab_rac where hab_rac_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_rac_nome .= $row_hab['hab_rac_nome']."
			";
			$hab_rac_nome = (str_replace(" - $this->raca", "", $hab_rac_nome));
		}
		$_SESSION['hab_rac_cod'] = $hab_rac_cod;
		$_SESSION['hab_rac'] = $hab_rac_nome;

		$i = 0;
		
		while($i <= 9){
		
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
	
	case 'Halfling':
		print('<h3>Halfling<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = array(

		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=98"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=25"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=26"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=27"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=56"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=57"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=58"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=59"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=60")

		);
		
		$hab_rac_nome = null;
		$hab_rac_cod = array(25,26,27);
		foreach ($hab_rac_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_rac_nome from hab_rac where hab_rac_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_rac_nome .= $row_hab['hab_rac_nome']."
			";
			$hab_rac_nome = (str_replace(" - $this->raca", "", $hab_rac_nome));
		}
		$_SESSION['hab_rac_cod'] = $hab_rac_cod;
		$_SESSION['hab_rac'] = $hab_rac_nome;

		$i = 0;
		
		while($i <= 8){
		
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
	
	case 'Humano':
		print('<h3>Humano<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = array(

		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=61"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=62"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=63"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=64"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=65")
		);
		
		$hab_rac_nome = null;
		$hab_rac_cod = array();
		foreach ($hab_rac_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_rac_nome from hab_rac where hab_rac_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_rac_nome .= $row_hab['hab_rac_nome']."
			";
			$hab_rac_nome = (str_replace(" - $this->raca", "", $hab_rac_nome));
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
	
	case 'Draconato':
		print('<h3>Draconato<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = array(

		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=103"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=32"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=33"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=34"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=66"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=67"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=68"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=69"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=70")
		);
		
		$hab_rac_nome = null;
		$hab_rac_cod = array(32,33,34);
		foreach ($hab_rac_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_rac_nome from hab_rac where hab_rac_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_rac_nome .= $row_hab['hab_rac_nome']."
			";
			$hab_rac_nome = (str_replace(" - $this->raca", "", $hab_rac_nome));
		}
		$_SESSION['hab_rac_cod'] = $hab_rac_cod;
		$_SESSION['hab_rac'] = $hab_rac_nome;
		
		$i = 0;
		
		while($i <= 8){
		
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
	
	case 'Gnomo':
		print('<h3>Gnomo<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = array(

		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=104"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=3"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=35"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=71"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=72"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=73"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=74"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=75")
		);
		
		$hab_rac_nome = null;
		$hab_rac_cod = array(3,35);
		foreach ($hab_rac_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_rac_nome from hab_rac where hab_rac_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_rac_nome .= $row_hab['hab_rac_nome']."
			";
			$hab_rac_nome = (str_replace(" - $this->raca", "", $hab_rac_nome));
		}
		$_SESSION['hab_rac_cod'] = $hab_rac_cod;
		$_SESSION['hab_rac'] = $hab_rac_nome;

		$i = 0;
		
		while($i <= 7){
		
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
	
	case 'Meio-Elfo':
		print('<h3>Meio-Elfo<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = array(

		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=107"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=4"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=14"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=40"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=76"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=77"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=78"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=79"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=80")
		);
		
		$hab_rac_nome = null;
		$hab_rac_cod = array(4,14,40);
		foreach ($hab_rac_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_rac_nome from hab_rac where hab_rac_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_rac_nome .= $row_hab['hab_rac_nome']."
			";
			$hab_rac_nome = (str_replace(" - $this->raca", "", $hab_rac_nome));
		}
		$_SESSION['hab_rac_cod'] = $hab_rac_cod;
		$_SESSION['hab_rac'] = $hab_rac_nome;

		$i = 0;
		
		while($i <= 8){
		
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
	
	case 'Meio-Orc':
		print('<h3>Meio-Orc<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = array(

		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=108"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=5"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=41"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=42"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=43"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=81"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=82"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=83"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=84"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=85")
		);
		
		$hab_rac_nome = null;
		$hab_rac_cod = array(5,41,42,43);
		foreach ($hab_rac_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_rac_nome from hab_rac where hab_rac_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_rac_nome .= $row_hab['hab_rac_nome']."
			";
			$hab_rac_nome = (str_replace(" - $this->raca", "", $hab_rac_nome));
		}
		$_SESSION['hab_rac_cod'] = $hab_rac_cod;
		$_SESSION['hab_rac'] = $hab_rac_nome;

		$i = 0;
		
		while($i <= 9){
		
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

	case 'Tiefling':
		print('<h3>Tiefling<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = array(

		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=109"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=6"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=44"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=45"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=86"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=87"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=88"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=89"),
		mysqli_query($conexao, "select hab_rac_nome, hab_rac_desc from hab_rac where hab_rac_cod=90")
		);
		
		$hab_rac_nome = null;
		$hab_rac_cod = array(6,44,45);
		foreach ($hab_rac_cod as $hab_cod){
			$result_hab = mysqli_query($conexao, "select hab_rac_nome from hab_rac where hab_rac_cod=$hab_cod");
			$row_hab = mysqli_fetch_assoc($result_hab);
			$hab_rac_nome .= $row_hab['hab_rac_nome']."
			";
			$hab_rac_nome = (str_replace(" - $this->raca", "", $hab_rac_nome));
		}
		$_SESSION['hab_rac_cod'] = $hab_rac_cod;
		$_SESSION['hab_rac'] = $hab_rac_nome;
		

		$i = 0;
		
		while($i <= 8){
		
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