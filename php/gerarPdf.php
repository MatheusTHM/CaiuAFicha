<?php
	session_start();
	include_once 'classes/conexao.class.php';
	include_once 'classes/ficha.class.php';
	$conectar = new conexao;
	$ficha = new ficha;
	$conn = $conectar->getConexao();
	$id = $_POST['id'];
	$exibir = "SELECT perso FROM personagem where id = ".$id." LIMIT 1";
	$exibir_consulta = mysqli_query($conn, $exibir);
	$exibir_row = mysqli_fetch_assoc($exibir_consulta);
	$info = $ficha->separar($exibir_row['perso']);
	$ficha->sessionar($info);
	$ficha->profClass($info[6]);
	$ficha->setFicha($info[0],$info[1],$info[2],$info[3],$info[4],$info[5],$info[6],$info[7],$info[8],$info[9],$info[10],$info[11],$info[12],$info[13],$info[14],$info[15],$info[16],$info[17],$info[18],$info[19],$info[20],$info[21],$info[22],$info[23],$info[24],$info[25],$info[26],$info[27],$info[28],$info[29],$info[30],$info[31]);
	header("Location: pdf.php");
	$ficha->mostraFicha();
	?>