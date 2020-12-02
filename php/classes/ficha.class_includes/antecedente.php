<?php
switch ($this->antecedente) {
	case 'Acólito':
		print('<h3>Acólito<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = mysqli_query($conexao, "select ante_nome, ante_text, ante_caracteristica_nome, ante_caracteristica, ante_proficiencias from antecedente where ante_cod=1");
		
		$registros = mysqli_num_rows($consulta);

		while($exibirRegistros = mysqli_fetch_array($consulta)){
			$ante_nome = $exibirRegistros[0];
			$ante_text = $exibirRegistros[1];
			$ante_caracteristica_nome = $exibirRegistros[2];
			$ante_caracteristica = $exibirRegistros[3];
			$ante_proficiencias = $exibirRegistros[4];

			print("<h6>$ante_text</h6>");
			print("<h5>$ante_caracteristica_nome</h5>");
			print("<h6>$ante_caracteristica</h6>");
			print("<h5>Proficiencias e Equipamento</h5>");
			print("<h6>$ante_proficiencias</h6>");
			$_SESSION['hab_ante'] = $exibirRegistros[2];
			$ante_proficiencias = explode("Equipamento:","$ante_proficiencias");
			$ante_proficiencias[1] = str_replace("<b>", "", "$ante_proficiencias[1]");
			$ante_proficiencias[1] = str_replace("</b>", "", "$ante_proficiencias[1]");
			$_SESSION['ante_itens'] = $ante_proficiencias[1].".";
	}
	break;

	case 'Artesão de Guilda':
		print('<h3>Artesão de Guilda<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = mysqli_query($conexao, "select ante_nome, ante_text, ante_caracteristica_nome, ante_caracteristica, ante_proficiencias from antecedente where ante_cod=2");
		
		$registros = mysqli_num_rows($consulta);

		while($exibirRegistros = mysqli_fetch_array($consulta)){
			$ante_nome = $exibirRegistros[0];
			$ante_text = $exibirRegistros[1];
			$ante_caracteristica_nome = $exibirRegistros[2];
			$ante_caracteristica = $exibirRegistros[3];
			$ante_proficiencias = $exibirRegistros[4];

			print("<h6>$ante_text</h6>");
			print("<h5>$ante_caracteristica_nome</h5>");
			print("<h6>$ante_caracteristica</h6>");
			print("<h5>Proficiencias e Equipamento</h5>");
			print("<h6>$ante_proficiencias</h6>");
			$_SESSION['hab_ante'] = $exibirRegistros[2];
			$ante_proficiencias = explode("Equipamento:","$ante_proficiencias");
			$ante_proficiencias[1] = str_replace("<b>", "", "$ante_proficiencias[1]");
			$ante_proficiencias[1] = str_replace("</b>", "", "$ante_proficiencias[1]");
			$_SESSION['ante_itens'] = $ante_proficiencias[1].".";
	}
	break;
	
	case 'Artista':
		print('<h3>Artista<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = mysqli_query($conexao, "select ante_nome, ante_text, ante_caracteristica_nome, ante_caracteristica, ante_proficiencias from antecedente where ante_cod=3");
		
		$registros = mysqli_num_rows($consulta);

		while($exibirRegistros = mysqli_fetch_array($consulta)){
			$ante_nome = $exibirRegistros[0];
			$ante_text = $exibirRegistros[1];
			$ante_caracteristica_nome = $exibirRegistros[2];
			$ante_caracteristica = $exibirRegistros[3];
			$ante_proficiencias = $exibirRegistros[4];

			print("<h6>$ante_text</h6>");
			print("<h5>$ante_caracteristica_nome</h5>");
			print("<h6>$ante_caracteristica</h6>");
			print("<h5>Proficiencias e Equipamento</h5>");
			print("<h6>$ante_proficiencias</h6>");
			$_SESSION['hab_ante'] = $exibirRegistros[2];
			$ante_proficiencias = explode("Equipamento:","$ante_proficiencias");
			$ante_proficiencias[1] = str_replace("<b>", "", "$ante_proficiencias[1]");
			$ante_proficiencias[1] = str_replace("</b>", "", "$ante_proficiencias[1]");
			$_SESSION['ante_itens'] = $ante_proficiencias[1].".";
	}
	break;

	case 'Charlatão':
		print('<h3>Charlatão<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = mysqli_query($conexao, "select ante_nome, ante_text, ante_caracteristica_nome, ante_caracteristica, ante_proficiencias from antecedente where ante_cod=4");
		
		$registros = mysqli_num_rows($consulta);

		while($exibirRegistros = mysqli_fetch_array($consulta)){
			$ante_nome = $exibirRegistros[0];
			$ante_text = $exibirRegistros[1];
			$ante_caracteristica_nome = $exibirRegistros[2];
			$ante_caracteristica = $exibirRegistros[3];
			$ante_proficiencias = $exibirRegistros[4];

			print("<h6>$ante_text</h6>");
			print("<h5>$ante_caracteristica_nome</h5>");
			print("<h6>$ante_caracteristica</h6>");
			print("<h5>Proficiencias e Equipamento</h5>");
			print("<h6>$ante_proficiencias</h6>");
			$_SESSION['hab_ante'] = $exibirRegistros[2];
			$ante_proficiencias = explode("Equipamento:","$ante_proficiencias");
			$ante_proficiencias[1] = str_replace("<b>", "", "$ante_proficiencias[1]");
			$ante_proficiencias[1] = str_replace("</b>", "", "$ante_proficiencias[1]");
			$_SESSION['ante_itens'] = $ante_proficiencias[1].".";
	}
	break;

	case 'Criminoso':
		print('<h3>Criminoso<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = mysqli_query($conexao, "select ante_nome, ante_text, ante_caracteristica_nome, ante_caracteristica, ante_proficiencias from antecedente where ante_cod=5");
		
		$registros = mysqli_num_rows($consulta);

		while($exibirRegistros = mysqli_fetch_array($consulta)){
			$ante_nome = $exibirRegistros[0];
			$ante_text = $exibirRegistros[1];
			$ante_caracteristica_nome = $exibirRegistros[2];
			$ante_caracteristica = $exibirRegistros[3];
			$ante_proficiencias = $exibirRegistros[4];

			print("<h6>$ante_text</h6>");
			print("<h5>$ante_caracteristica_nome</h5>");
			print("<h6>$ante_caracteristica</h6>");
			print("<h5>Proficiencias e Equipamento</h5>");
			print("<h6>$ante_proficiencias</h6>");
			$_SESSION['hab_ante'] = $exibirRegistros[2];
			$ante_proficiencias = explode("Equipamento:","$ante_proficiencias");
			$ante_proficiencias[1] = str_replace("<b>", "", "$ante_proficiencias[1]");
			$ante_proficiencias[1] = str_replace("</b>", "", "$ante_proficiencias[1]");
			$_SESSION['ante_itens'] = $ante_proficiencias[1].".";
	}
	break;

	case 'Eremita':
		print('<h3>Eremita<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = mysqli_query($conexao, "select ante_nome, ante_text, ante_caracteristica_nome, ante_caracteristica, ante_proficiencias from antecedente where ante_cod=6");
		
		$registros = mysqli_num_rows($consulta);

		while($exibirRegistros = mysqli_fetch_array($consulta)){
			$ante_nome = $exibirRegistros[0];
			$ante_text = $exibirRegistros[1];
			$ante_caracteristica_nome = $exibirRegistros[2];
			$ante_caracteristica = $exibirRegistros[3];
			$ante_proficiencias = $exibirRegistros[4];

			print("<h6>$ante_text</h6>");
			print("<h5>$ante_caracteristica_nome</h5>");
			print("<h6>$ante_caracteristica</h6>");
			print("<h5>Proficiencias e Equipamento</h5>");
			print("<h6>$ante_proficiencias</h6>");
			$_SESSION['hab_ante'] = $exibirRegistros[2];
			$ante_proficiencias = explode("Equipamento:","$ante_proficiencias");
			$ante_proficiencias[1] = str_replace("<b>", "", "$ante_proficiencias[1]");
			$ante_proficiencias[1] = str_replace("</b>", "", "$ante_proficiencias[1]");
			$_SESSION['ante_itens'] = $ante_proficiencias[1].".";
	}
	break;

	case 'Forasteiro':
		print('<h3>Forasteiro<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = mysqli_query($conexao, "select ante_nome, ante_text, ante_caracteristica_nome, ante_caracteristica, ante_proficiencias from antecedente where ante_cod=7");
		
		$registros = mysqli_num_rows($consulta);

		while($exibirRegistros = mysqli_fetch_array($consulta)){
			$ante_nome = $exibirRegistros[0];
			$ante_text = $exibirRegistros[1];
			$ante_caracteristica_nome = $exibirRegistros[2];
			$ante_caracteristica = $exibirRegistros[3];
			$ante_proficiencias = $exibirRegistros[4];

			print("<h6>$ante_text</h6>");
			print("<h5>$ante_caracteristica_nome</h5>");
			print("<h6>$ante_caracteristica</h6>");
			print("<h5>Proficiencias e Equipamento</h5>");
			print("<h6>$ante_proficiencias</h6>");
			$_SESSION['hab_ante'] = $exibirRegistros[2];
			$ante_proficiencias = explode("Equipamento:","$ante_proficiencias");
			$ante_proficiencias[1] = str_replace("<b>", "", "$ante_proficiencias[1]");
			$ante_proficiencias[1] = str_replace("</b>", "", "$ante_proficiencias[1]");
			$_SESSION['ante_itens'] = $ante_proficiencias[1].".";
	}
	break;

	case 'Herói do Povo':
		print('<h3>Herói do Povo<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = mysqli_query($conexao, "select ante_nome, ante_text, ante_caracteristica_nome, ante_caracteristica, ante_proficiencias from antecedente where ante_cod=8");
		
		$registros = mysqli_num_rows($consulta);

		while($exibirRegistros = mysqli_fetch_array($consulta)){
			$ante_nome = $exibirRegistros[0];
			$ante_text = $exibirRegistros[1];
			$ante_caracteristica_nome = $exibirRegistros[2];
			$ante_caracteristica = $exibirRegistros[3];
			$ante_proficiencias = $exibirRegistros[4];

			print("<h6>$ante_text</h6>");
			print("<h5>$ante_caracteristica_nome</h5>");
			print("<h6>$ante_caracteristica</h6>");
			print("<h5>Proficiencias e Equipamento</h5>");
			print("<h6>$ante_proficiencias</h6>");
			$_SESSION['hab_ante'] = $exibirRegistros[2];
			$ante_proficiencias = explode("Equipamento:","$ante_proficiencias");
			$ante_proficiencias[1] = str_replace("<b>", "", "$ante_proficiencias[1]");
			$ante_proficiencias[1] = str_replace("</b>", "", "$ante_proficiencias[1]");
			$_SESSION['ante_itens'] = $ante_proficiencias[1].".";
	}
	break;

	case 'Marinheiro':
		print('<h3>Marinheiro<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = mysqli_query($conexao, "select ante_nome, ante_text, ante_caracteristica_nome, ante_caracteristica, ante_proficiencias from antecedente where ante_cod=9");
		
		$registros = mysqli_num_rows($consulta);

		while($exibirRegistros = mysqli_fetch_array($consulta)){
			$ante_nome = $exibirRegistros[0];
			$ante_text = $exibirRegistros[1];
			$ante_caracteristica_nome = $exibirRegistros[2];
			$ante_caracteristica = $exibirRegistros[3];
			$ante_proficiencias = $exibirRegistros[4];

			print("<h6>$ante_text</h6>");
			print("<h5>$ante_caracteristica_nome</h5>");
			print("<h6>$ante_caracteristica</h6>");
			print("<h5>Proficiencias e Equipamento</h5>");
			print("<h6>$ante_proficiencias</h6>");
			$_SESSION['hab_ante'] = $exibirRegistros[2];
			$ante_proficiencias = explode("Equipamento:","$ante_proficiencias");
			$ante_proficiencias[1] = str_replace("<b>", "", "$ante_proficiencias[1]");
			$ante_proficiencias[1] = str_replace("</b>", "", "$ante_proficiencias[1]");
			$_SESSION['ante_itens'] = $ante_proficiencias[1].".";
	}
	break;

	case 'Nobre':
		print('<h3>Nobre<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = mysqli_query($conexao, "select ante_nome, ante_text, ante_caracteristica_nome, ante_caracteristica, ante_proficiencias from antecedente where ante_cod=10");
		
		$registros = mysqli_num_rows($consulta);

		while($exibirRegistros = mysqli_fetch_array($consulta)){
			$ante_nome = $exibirRegistros[0];
			$ante_text = $exibirRegistros[1];
			$ante_caracteristica_nome = $exibirRegistros[2];
			$ante_caracteristica = $exibirRegistros[3];
			$ante_proficiencias = $exibirRegistros[4];

			print("<h6>$ante_text</h6>");
			print("<h5>$ante_caracteristica_nome</h5>");
			print("<h6>$ante_caracteristica</h6>");
			print("<h5>Proficiencias e Equipamento</h5>");
			print("<h6>$ante_proficiencias</h6>");
			$_SESSION['hab_ante'] = $exibirRegistros[2];
			$ante_proficiencias = explode("Equipamento:","$ante_proficiencias");
			$ante_proficiencias[1] = str_replace("<b>", "", "$ante_proficiencias[1]");
			$ante_proficiencias[1] = str_replace("</b>", "", "$ante_proficiencias[1]");
			$_SESSION['ante_itens'] = $ante_proficiencias[1].".";
	}
	break;

	case 'Órfão':
		print('<h3>Órfão<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = mysqli_query($conexao, "select ante_nome, ante_text, ante_caracteristica_nome, ante_caracteristica, ante_proficiencias from antecedente where ante_cod=11");
		
		$registros = mysqli_num_rows($consulta);

		while($exibirRegistros = mysqli_fetch_array($consulta)){
			$ante_nome = $exibirRegistros[0];
			$ante_text = $exibirRegistros[1];
			$ante_caracteristica_nome = $exibirRegistros[2];
			$ante_caracteristica = $exibirRegistros[3];
			$ante_proficiencias = $exibirRegistros[4];

			print("<h6>$ante_text</h6>");
			print("<h5>$ante_caracteristica_nome</h5>");
			print("<h6>$ante_caracteristica</h6>");
			print("<h5>Proficiencias e Equipamento</h5>");
			print("<h6>$ante_proficiencias</h6>");
			$_SESSION['hab_ante'] = $exibirRegistros[2];
			$ante_proficiencias = explode("Equipamento:","$ante_proficiencias");
			$ante_proficiencias[1] = str_replace("<b>", "", "$ante_proficiencias[1]");
			$ante_proficiencias[1] = str_replace("</b>", "", "$ante_proficiencias[1]");
			$_SESSION['ante_itens'] = $ante_proficiencias[1].".";
	}
	break;

	case 'Sábio':
		print('<h3>Sábio<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = mysqli_query($conexao, "select ante_nome, ante_text, ante_caracteristica_nome, ante_caracteristica, ante_proficiencias from antecedente where ante_cod=12");
		
		$registros = mysqli_num_rows($consulta);

		while($exibirRegistros = mysqli_fetch_array($consulta)){
			$ante_nome = $exibirRegistros[0];
			$ante_text = $exibirRegistros[1];
			$ante_caracteristica_nome = $exibirRegistros[2];
			$ante_caracteristica = $exibirRegistros[3];
			$ante_proficiencias = $exibirRegistros[4];

			print("<h6>$ante_text</h6>");
			print("<h5>$ante_caracteristica_nome</h5>");
			print("<h6>$ante_caracteristica</h6>");
			print("<h5>Proficiencias e Equipamento</h5>");
			print("<h6>$ante_proficiencias</h6>");
			$_SESSION['hab_ante'] = $exibirRegistros[2];
			$ante_proficiencias = explode("Equipamento:","$ante_proficiencias");
			$ante_proficiencias[1] = str_replace("<b>", "", "$ante_proficiencias[1]");
			$ante_proficiencias[1] = str_replace("</b>", "", "$ante_proficiencias[1]");
			$_SESSION['ante_itens'] = $ante_proficiencias[1].".";
	}
	break;

	case 'Soldado':
		print('<h3>Soldado<h3/>');

		$conectar = new conexao;
		$conexao = $conectar->getConexao();
		
		$consulta = mysqli_query($conexao, "select ante_nome, ante_text, ante_caracteristica_nome, ante_caracteristica, ante_proficiencias from antecedente where ante_cod=13");
		
		$registros = mysqli_num_rows($consulta);

		while($exibirRegistros = mysqli_fetch_array($consulta)){
			$ante_nome = $exibirRegistros[0];
			$ante_text = $exibirRegistros[1];
			$ante_caracteristica_nome = $exibirRegistros[2];
			$ante_caracteristica = $exibirRegistros[3];
			$ante_proficiencias = $exibirRegistros[4];

			print("<h6>$ante_text</h6>");
			print("<h5>$ante_caracteristica_nome</h5>");
			print("<h6>$ante_caracteristica</h6>");
			print("<h5>Proficiencias e Equipamento</h5>");
			print("<h6>$ante_proficiencias</h6>");
			$_SESSION['hab_ante'] = $exibirRegistros[2];
			$ante_proficiencias = explode("Equipamento:","$ante_proficiencias");
			$ante_proficiencias[1] = str_replace("<b>", "", "$ante_proficiencias[1]");
			$ante_proficiencias[1] = str_replace("</b>", "", "$ante_proficiencias[1]");
			$_SESSION['ante_itens'] = $ante_proficiencias[1].".";
	}
	break;
}
?>