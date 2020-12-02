<?php
	session_start();
	include_once '../php/classes/ficha.class.php';
	$ficha = new ficha;
	$nome = "";
	if(isset($_POST['salvar'])){
		if(isset($_SESSION['cod'])){
			$cod = $_SESSION['cod'];
			$ficha->salvar($cod, $_SESSION['id']);
		}
	}
	
	if(isset($_SESSION['nome'])){
		$nome = $_SESSION['nome'];
	}
	
	$_SESSION['itens_mostrar'] = ($_SESSION['itens'].$_SESSION['ante_itens']);
	$_SESSION['hab'] = $_SESSION['hab_rac'].$_SESSION['hab_ante']."
	".$_SESSION['hab_class'];
	//$raca = $_POST['raca'];
	//$nivel = $_POST['nivel'];
	//$antecedente = $_POST['antecedente'];
	require('../app.util/pdf/fpdf.php');
	$pdf = new FPDF('P', 'pt', 'A4');
	$pdf->SetTitle(utf8_decode('Caiu a Ficha - PDF'));
	$pdf->AddPage();
	$pdf->SetMargins(38,10,10);
	$image = '../images/ficha.jpg';
	$home = '../images/buttons/button.jpg';
	$fichas = '../images/buttons/button2.jpg';
	$pdf->Image($image,0,0,595);
	$pdf->SetFont('Times','',18);
	$pdf->SetXY(40,58.5);
	$pdf->Cell(100, 30, $_SESSION['personagem'], 0, 0, 'L', FALSE);
	$pdf->SetY(145);
	$pdf->SetX(280);
	//iniciativa
	$pdf->Cell(100, 30, $_SESSION['destrezaMod'], 0, 0, 'L', FALSE);
	$pdf->SetFont('Times','',24);
	$pdf->SetY(205);
	$pdf->SetX(290);
	$pdf->Cell(100, 30, "/".$_SESSION['vida'], 0, 0, 'L', FALSE);
	//atributos
	$pdf->SetFont('Times','',18);
	$pdf->SetY(150);
	$pdf->Cell(100, 30, $_SESSION['forcaMod'], 0, 0, 'L', FALSE);
	$pdf->SetY(220);
	$pdf->Cell(100, 30, $_SESSION['destrezaMod'], 0, 0, 'L', FALSE);
	$pdf->SetY(290);
	$pdf->Cell(100, 30, $_SESSION['constituicaoMod'], 0, 0, 'L', FALSE);
	$pdf->SetY(360);
	$pdf->Cell(100, 30, $_SESSION['inteligenciaMod'], 0, 0, 'L', FALSE);
	$pdf->SetY(430);
	$pdf->Cell(100, 30, $_SESSION['sabedoriaMod'], 0, 0, 'L', FALSE);
	$pdf->SetY(500);
	$pdf->Cell(100, 30, $_SESSION['carismaMod'], 0, 0, 'L', FALSE);
	$pdf->SetY(315);
	$pdf->SetX(207.5);
	$pdf->Cell(100, 30, $_SESSION['dvida'], 0, 0, 'C', FALSE);
	$pdf->SetY(142.5);
	$pdf->SetX(302);
	$pdf->Cell(100, 30, $_SESSION['deslocamento'], 0, 0, 'C', FALSE);
	$pdf->SetFont('Times','',12);
	$pdf->SetXY(95,158);
	$pdf->Cell(100, 30, $_SESSION['proficiencia'], 0, 0, 'L', FALSE);
	
	/*$pdf->SetFont('Times','',60);
	$pdf->SetXY(91,182.5);
	$resistencias = '......';
	$pdf->MultiCell(10, 13.4, $resistencias, 0, 'L', FALSE);
	$pdf->SetXY(91,295);
	$pericias = '..................';
	$pdf->MultiCell(10, 13.2, $pericias, 0, 'L', FALSE);
	$pdf->SetFont('Times','',18);*/
	
	$pdf->SetY(172.5);
	$pdf->SetX(46.5);
	$pdf->Cell(100, 30, $_SESSION['forca'], 0, 0, 'L', FALSE);
	$pdf->SetY(242.5);
	$pdf->SetX(46.5);
	$pdf->Cell(100, 30, $_SESSION['destreza'], 0, 0, 'L', FALSE);
	$pdf->SetY(312.5);
	$pdf->SetX(46.5);
	$pdf->Cell(100, 30, $_SESSION['constituicao'], 0, 0, 'L', FALSE);
	$pdf->SetY(382.5);
	$pdf->SetX(46.5);
	$pdf->Cell(100, 30, $_SESSION['inteligencia'], 0, 0, 'L', FALSE);
	$pdf->SetY(452.5);
	$pdf->SetX(46.5);
	$pdf->Cell(100, 30, $_SESSION['sabedoria'], 0, 0, 'L', FALSE);
	$pdf->SetY(522.5);
	$pdf->SetX(46.5);
	$pdf->Cell(100, 30, $_SESSION['carisma'], 0, 0, 'L', FALSE);
	$pdf->SetXY(260,40);
	$pdf->Cell(100, 30, $_SESSION['classe'], 0, 0, 'L', FALSE);
	$pdf->SetXY(315,40);
	$pdf->Cell(100, 30, $_SESSION['nivel'], 0, 0, 'L', FALSE);
	$pdf->SetX(350);
	$pdf->Cell(100, 30, $_SESSION['antecedente'], 0, 0, 'C', FALSE);
	$pdf->SetX(460);
	$pdf->Cell(100, 30, $nome, 0, 0, 'L', FALSE);
	$pdf->SetXY(260,65);
	$pdf->Cell(100, 30, $_SESSION['raca'], 0, 0, 'L', FALSE);
	$pdf->SetXY(450,65);
	$pdf->Cell(100, 30, $_SESSION['experiencia'], 0, 0, 'L', FALSE);
	$pdf->SetX(340);
	$pdf->Cell(100, 30, $_SESSION['tendencia'], 0, 0, 'C', FALSE);
	$pdf->SetXY(150,750);
	$pdf->Cell(100, 30, "Voltar ao início", 0, 0, 'L', FALSE, "http://localhost/tcc");
	$pdf->SetXY(350,750);
	$pdf->Cell(100, 30, "Suas Fichas", 0, 0, 'L', FALSE, "http://localhost/tcc/php/fichas.php");
	$pdf->Image($home,83,750,70,"","");
	$pdf->Image($fichas,283,750,70,"","");
	$pdf->SetFont('Times','',8);
	$pdf->SetXY(30,610);
	$pdf->MultiCell(180, 8, $_SESSION['prof_class'], 0, 'L', FALSE);
	$pdf->SetFont('Times','',9);
	$pdf->SetXY(260,574);
	$pdf->MultiCell(122.5, 11, $_SESSION['itens_mostrar'], 0, 'L', FALSE);
	$pdf->SetY(370);
	$pdf->SetX(400);
	$pdf->MultiCell(170, 11, $_SESSION['hab'], 0, 'L', FALSE);
	$pdf->Output();
?>