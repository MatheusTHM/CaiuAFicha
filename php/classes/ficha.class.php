<?php
	class ficha
	{
		private $raca;
		private $sub_raca_anao;
		private $sub_raca_elfo;
		private $sub_raca_halfling;
		private $sub_raca_humano;
		private $sub_raca_gnomo;
		private $classe;
		private $arq_bar;
		private $arq_bard;
		private $arq_bruxoF;
		private $arq_bruxoP;
		private $arq_cle;
		private $arq_dru;
		private $arq_feit;
		private $arq_gue;
		private $arq_ladi;
		private $arq_mago;
		private $arq_mong;
		private $arq_pala;
		private $arq_patr;
		private $nivel;
		private $antecedente;
		private $forca;
		private $destreza;
		private $constituicao;
		private $inteligencia;
		private $sabedoria;
		private $carisma;
		
		public function setFicha($raca, $sra, $sre, $srh, $srhu, $srg, $classe, $arq_bar, $arq_bard, $arq_bruxoF, $arq_bruxoP, $arq_cle, $arq_dru, $arq_feit, $arq_gue, $arq_ladi, $arq_mago, $arq_mong, $arq_pala, $arq_patr, $nivel, $antecedente, $perso, $atitude, $moralidade, $forca, $destreza, $constituicao,$inteligencia, $sabedoria, $carisma)
		{

			$this->raca = $raca;
			$this->sub_raca_anao = $sra;
			$this->sub_raca_elfo = $sre;
			$this->sub_raca_halfling = $srh;
			$this->sub_raca_humano = $srhu;
			$this->sub_raca_gnomo = $srg;
			$this->classe = $classe;
			$this->arq_bar = $arq_bar;
			$this->arq_bard = $arq_bard;
			$this->arq_bruxoF = $arq_bruxoF;
			$this->arq_bruxoP = $arq_bruxoP;
			$this->arq_cle = $arq_cle;
			$this->arq_dru = $arq_dru;
			$this->arq_feit = $arq_feit;
			$this->arq_gue = $arq_gue;
			$this->arq_ladi = $arq_ladi;
			$this->arq_mago = $arq_mago;
			$this->arq_mong = $arq_mong;
			$this->arq_pala = $arq_pala;
			$this->arq_patr = $arq_patr;
			$this->nivel = $nivel;
			$this->antecedente = $antecedente;
			$this->forca = $forca;
			$this->destreza = $destreza;
			$this->constituicao = $constituicao;
			$this->inteligencia = $inteligencia;
			$this->sabedoria = $sabedoria;
			$this->carisma = $carisma;
		}
		
		public function getFicha(){
			return array($this->raca, $this->sub_raca_anao,$this->sub_raca_elfo, $this->sub_raca_halfling, $this->sub_raca_humano, $this->sub_raca_gnomo, $this->classe, $this->arq_bar, $this->arq_bard, $this->arq_bruxoF, $this->arq_bruxoP, $this->arq_cle, $this->arq_dru, $this->arq_feit, $this->arq_gue, $this->arq_ladi, $this->arq_mago, $this->arq_mong, $this->arq_pala, $this->arq_patr, $this->nivel, $this->antecedente, $this->forca, $this->destreza, $this->constituicao, $this->inteligencia, $this->sabedoria, $this->carisma);
		}
		
		public function filtro($raca, $sra, $sre, $srh, $srhu, $srg, $classe, $arq_bar, $arq_bard, $arq_bruxoF, $arq_bruxoP, $arq_cle, $arq_dru, $arq_feit, $arq_gue, $arq_ladi, $arq_mago, $arq_mong, $arq_pala, $arq_patr, $nivel, $antecedente, $perso, $atitude, $moralidade, $forca, $destreza, $constituicao,$inteligencia, $sabedoria, $carisma,$itens0, $itens1, $itens2, $itens3, $itens4)
		{
			
			if($raca == 1 || $raca == 3 || $raca == 6){
				$deslocamento = "7.5M";
			}else if($raca == 4 || $raca == 5 || $raca == 7 || $raca == 8 || $raca == 9){
				$deslocamento = "9M";
			}else if($raca == 2){
				if($sre == 2.2){
					$deslocamento = "10.5M";
				}else{
					$deslocamento = "9M";
				}
			}
			
			switch ($raca) {
				case '1':
				$raca = 'Anão';
				break;
				case '2':
				$raca = 'Elfo';
				break;
				case '3':
				$raca = 'Halfling';
				break;
				case '4':
				$raca = 'Humano';
				break;
				case '5':
				$raca = 'Draconato';
				break;
				case '6':
				$raca = 'Gnomo';
				break;
				case '7':
				$raca = 'Meio-Elfo';
				break;
				case '8':
				$raca = 'Meio-Orc';
				break;
				case '9':
				$raca = 'Tiefling';
				break;

			}
			
			$forcaMod = $this->modificador($forca);
			$destrezaMod = $this->modificador($destreza);
			$constituicaoMod = $this->modificador($constituicao);
			$inteligenciaMod = $this->modificador($inteligencia);
			$sabedoriaMod = $this->modificador($sabedoria);
			$carismaMod = $this->modificador($carisma);
			
			if($classe == 1){
				$dvida = $nivel."D12";
				$vida = ((12 + $constituicaoMod) + ((7 + $constituicaoMod) * ($nivel - 1)));
			}else if($classe == 7 || $classe == 11 || $classe == 12){
				$dvida = $nivel."D10";
				$vida = ((10 + $constituicaoMod) + ((6 + $constituicaoMod) * ($nivel - 1)));
			}else if($classe == 2 || $classe == 3 || $classe == 4 || $classe == 5 || $classe == 8 || $classe == 10){
				$dvida = $nivel."D8";
				$vida = ((8 + $constituicaoMod) + ((5 + $constituicaoMod) * ($nivel - 1)));
			}else{
				$dvida = $nivel."D6";
				$vida = ((6 + $constituicaoMod) + ((4 + $constituicaoMod) * ($nivel - 1)));
			}
			
			
			switch ($sra) {
				case '1.1':
				$sra = 'Anão da Colina';
				$vida = ($vida + (1*$nivel));
				break;
				case '1.2':
				$sra = 'Anão da Montanha';
				break;
			}

			switch ($sre) {
				case '2.1':
				$sre = 'Alto Elfo';
				break;
				case '2.2':
				$sre = 'Elfo da Floresta';
				break;
				case '2.3':
				$sre = 'Elfo Negro (Drow)';
				break;
			}

			switch ($srh) {
				case '3.1':
				$srh = 'Halfling Pés Leves';
				break;
				case '3.2':
				$srh = 'Halfling Robusto';
				break;
			}

			switch ($srhu) {
				case '4.1':
				$srhu = 'Humano';
				break;
				case '4.2':
				$srhu = 'Humano Variante';
				break;
			}

			switch ($srg) {
				case '6.1':
				$srg = 'Gnomo da Floresta';
				break;
				case '6.2':
				$srg = 'Gnomo das Rochas';
				break;
			}
			
			$itens = $this->consultaItens($itens0, $itens1, $itens2, $itens3, $itens4, $classe);
			
			
			
			
			switch ($classe) {
				case '1':
				$classe = 'Bárbaro';
				break;
				case '2':
				$classe = 'Bardo';
				break;
				case '3':
				$classe = 'Bruxo';
				break;
				case '4':
				$classe = 'Clérigo';
				break;
				case '5':
				$classe = 'Druida';
				break;
				case '6':
				$classe = 'Feiticeiro';
				break;
				case '7':
				$classe = 'Guerreiro';
				break;
				case '8':
				$classe = 'Ladino';
				break;
				case '9':
				$classe = 'Mago';
				break;
				case '10':
				$classe = 'Monge';
				break;
				case '11':
				$classe = 'Paladino';
				break;
				case '12':
				$classe = 'Patrulheiro';
				break;
			}
			
			//$arq_bar, $arq_bard, $arq_bruxoF, $arq_bruxoP, $arq_cle, $arq_dru, $arq_feit, $arq_gue, $arq_ladi, $arq_mago, $arq_mong, $arq_pala, $arq_patr
			
			
				if($classe == "Bárbaro"){
					$arq_bard = '0';
					$arq_bruxoF = '0';
					$arq_bruxoP = '0';
					$arq_cle = '0';
					$arq_dru = '0';
					$arq_feit = '0';
					$arq_gue = '0';
					$arq_ladi = '0';
					$arq_mago = '0';
					$arq_mong = '0';
					$arq_pala = '0';
					$arq_patr = '0';
				}else if($classe == "Bardo"){
					$arq_bar = '0';
					$arq_bruxoF = '0';
					$arq_bruxoP = '0';
					$arq_cle = '0';
					$arq_dru = '0';
					$arq_feit = '0';
					$arq_gue = '0';
					$arq_ladi = '0';
					$arq_mago = '0';
					$arq_mong = '0';
					$arq_pala = '0';
					$arq_patr = '0';
				}else if($classe == "Bruxo"){
					$arq_bar = '0';
					$arq_bard = '0';
					$arq_cle = '0';
					$arq_dru = '0';
					$arq_feit = '0';
					$arq_gue = '0';
					$arq_ladi = '0';
					$arq_mago = '0';
					$arq_mong = '0';
					$arq_pala = '0';
					$arq_patr = '0';
				}else if($classe == "Clérigo"){
					$arq_bar = '0';
					$arq_bard = '0';
					$arq_bruxoF = '0';
					$arq_bruxoP = '0';
					$arq_dru = '0';
					$arq_feit = '0';
					$arq_gue = '0';
					$arq_ladi = '0';
					$arq_mago = '0';
					$arq_mong = '0';
					$arq_pala = '0';
					$arq_patr = '0';
				}else if($classe == "Druida"){
					$arq_bar = '0';
					$arq_bard = '0';
					$arq_bruxoF = '0';
					$arq_bruxoP = '0';
					$arq_cle = '0';
					$arq_feit = '0';
					$arq_gue = '0';
					$arq_ladi = '0';
					$arq_mago = '0';
					$arq_mong = '0';
					$arq_pala = '0';
					$arq_patr = '0';
				}else if($classe == "Feiticeiro"){
					$arq_bar = '0';
					$arq_bard = '0';
					$arq_bruxoF = '0';
					$arq_bruxoP = '0';
					$arq_cle = '0';
					$arq_dru = '0';
					$arq_gue = '0';
					$arq_ladi = '0';
					$arq_mago = '0';
					$arq_mong = '0';
					$arq_pala = '0';
					$arq_patr = '0';
				}else if($classe == "Guerreiro"){
					$arq_bar = '0';
					$arq_bard = '0';
					$arq_bruxoF = '0';
					$arq_bruxoP = '0';
					$arq_cle = '0';
					$arq_dru = '0';
					$arq_feit = '0';
					$arq_ladi = '0';
					$arq_mago = '0';
					$arq_mong = '0';
					$arq_pala = '0';
					$arq_patr = '0';
				}else if($classe == "Ladino"){
					$arq_bar = '0';
					$arq_bard = '0';
					$arq_bruxoF = '0';
					$arq_bruxoP = '0';
					$arq_cle = '0';
					$arq_dru = '0';
					$arq_feit = '0';
					$arq_gue = '0';
					$arq_mago = '0';
					$arq_mong = '0';
					$arq_pala = '0';
					$arq_patr = '0';
				}else if($classe == "Mago"){
					$arq_bar = '0';
					$arq_bard = '0';
					$arq_bruxoF = '0';
					$arq_bruxoP = '0';
					$arq_cle = '0';
					$arq_dru = '0';
					$arq_feit = '0';
					$arq_gue = '0';
					$arq_ladi = '0';
					$arq_mong = '0';
					$arq_pala = '0';
					$arq_patr = '0';
				}else if($classe == "Monge"){
					$arq_bar = '0';
					$arq_bard = '0';
					$arq_bruxoF = '0';
					$arq_bruxoP = '0';
					$arq_cle = '0';
					$arq_dru = '0';
					$arq_feit = '0';
					$arq_gue = '0';
					$arq_ladi = '0';
					$arq_mago = '0';
					$arq_pala = '0';
					$arq_patr = '0';
				}else if($classe == "Paladino"){
					$arq_bar = '0';
					$arq_bard = '0';
					$arq_bruxoF = '0';
					$arq_bruxoP = '0';
					$arq_cle = '0';
					$arq_dru = '0';
					$arq_feit = '0';
					$arq_gue = '0';
					$arq_ladi = '0';
					$arq_mago = '0';
					$arq_mong = '0';
					$arq_patr = '0';
				}else if($classe == "Patrulheiro"){
					$arq_bar = '0';
					$arq_bard = '0';
					$arq_bruxoF = '0';
					$arq_bruxoP = '0';
					$arq_cle = '0';
					$arq_dru = '0';
					$arq_feit = '0';
					$arq_gue = '0';
					$arq_ladi = '0';
					$arq_mago = '0';
					$arq_mong = '0';
					$arq_pala = '0';
				}
			
				$this->profClass($classe);
			
			switch ($arq_bar) {
				case '1':
				$arq_bar = 'Caminho do Furioso';
				break;
				case '2':
				$arq_bar = 'Caminho do Guerreiro Totêmico';
				break;
			}

			switch ($arq_bard) {
				case '1':
				$arq_bard = 'Colégio do Conhecimento';
				break;
				case '2':
				$arq_bard = 'Colégio da Bravura';
				break;
			}

			switch ($arq_bruxoF) {
				case '1':
				$arq_bruxoF = 'A Arquifada';
				break;
				case '2':
				$arq_bruxoF = 'O Corruptor';
				break;
				case '3':
				$arq_bruxoF = 'O Grande Antigo';
				break;
			}

			switch ($arq_bruxoP) {
				case '1':
				$arq_bruxoP = 'Pacto da Corrente';
				break;
				case '2':
				$arq_bruxoP = 'Pacto da Lâmina';
				break;
				case '3':
				$arq_bruxoP = 'Pacto do Tomo';
				break;
			}

			switch ($arq_cle) {
				case '1':
				$arq_cle = 'Domínio do Conhecimento';
				break;
				case '2':
				$arq_cle = 'Domínio da Enganação';
				break;
				case '3':
				$arq_cle = 'Domínio da Guerra';
				break;
				case '4':
				$arq_cle = 'Domínio da Luz';
				break;
				case '5':
				$arq_cle = 'Domínio da Natureza';
				break;
				case '6':
				$arq_cle = 'Domínio da Tempestade';
				break;
				case '7':
				$arq_cle = 'Domínio da Vida';
				break;
			}

			switch ($arq_dru) {
				case '1':
				$arq_dru = 'Círculo da Terra';
				break;
				case '2':
				$arq_dru = 'Círculo da Lua';
				break;
			}

			switch ($arq_feit) {
				case '1':
				$arq_feit = 'Linhagem Dracônica';
				break;
				case '2':
				$arq_feit = 'Magia Selvagem';
				break;
			}

			switch ($arq_gue) {
				case '1':
				$arq_gue = 'Campeão';
				break;
				case '2':
				$arq_gue = 'Cavaleiro Arcano';
				break;
				case '3':
				$arq_gue = 'Mestre de Batalha';
				break;
			}

			switch ($arq_ladi) {
				case '1':
				$arq_ladi = 'Assassino';
				break;
				case '2':
				$arq_ladi = 'Ladrão';
				break;
				case '3':
				$arq_ladi = 'Trapaceiro Arcano';
				break;
			}

			switch ($arq_mago) {
				case '1':
				$arq_mago = 'Escola de Abjuração';
				break;
				case '2':
				$arq_mago = 'Escola de Adivinhação';
				break;
				case '3':
				$arq_mago = 'Escola de Conjuração';
				break;
				case '4':
				$arq_mago = 'Escola de Encantamento';
				break;
				case '5':
				$arq_mago = 'Escola de Evocação';
				break;
				case '6':
				$arq_mago = 'Escola de Ilusão';
				break;
				case '7':
				$arq_mago = 'Escola de Necromancia';
				break;
				case '8':
				$arq_mago = 'Escola de Transmutação';
				break;
			}

			switch ($arq_mong) {
				case '1':
				$arq_mong = 'Caminho da Mão Aberta';
				break;
				case '2':
				$arq_mong = 'Caminho da Sombra';
				break;
				case '3':
				$arq_mong = 'Caminho dos Quatro Elementos';
				break;
			}

			switch ($arq_pala) {
				case '1':
				$arq_pala = 'Juramento de Devoção';
				break;
				case '2':
				$arq_pala = 'Juramento dos Anciões';
				break;
				case '3':
				$arq_pala = 'Juramento de Vingança';
				break;
			}

			switch ($arq_patr) {
				case '1':
				$arq_patr = 'Conclave da Besta';
				break;
				case '2':
				$arq_patr = 'Conclave do Caçador';
				break;
				case '3':
				$arq_patr = 'Conclave do Rastreador Subterrâneo';
				break;
			}
			
			
			switch ($antecedente) {
				case '1':
				$antecedente = 'Acólito';
				break;
				case '2':
				$antecedente = 'Artesão de Guilda';
				break;
				case '3':
				$antecedente = 'Artista';
				break;
				case '4':
				$antecedente = 'Charlatão';
				break;
				case '5':
				$antecedente = 'Criminoso';
				break;
				case '6':
				$antecedente = 'Eremita';
				break;
				case '7':
				$antecedente = 'Forasteiro';
				break;
				case '8':
				$antecedente = 'Herói do Povo';
				break;
				case '9':
				$antecedente = 'Marinheiro';
				break;
				case '10':
				$antecedente = 'Nobre';
				break;
				case '11':
				$antecedente = 'Órfão';
				break;
				case '12':
				$antecedente = 'Sábio';
				break;
				case '13':
				$antecedente = 'Soldado';
				break;
			}
				if($nivel <= 4){
					$profi = "+2";
				}else if($nivel <= 8){
					$profi = "+3";
				}else if($nivel <= 12){
					$profi = "+4";
				}else if($nivel <= 16){
					$profi = "+5";
				}else if($nivel <= 20){
					$profi = "+6";
				}
				
				switch ($nivel){
				case '1':
				$exp = "      0/300";
				break;
				case '2':
				$exp = "    300/900";
				break;
				case '3':
				$exp = "    900/2.700";
				break;
				case '4':
				$exp = "   2.700/6.500";
				break;
				case '5':
				$exp = "   6.500/14.000";
				break;
				case '6':
				$exp = " 14.000/23.000";
				break;
				case '7':
				$exp = " 23.000/34.000";
				break;
				case '8':
				$exp = " 34.000/48.000";
				break;
				case '9':
				$exp = " 48.000/64.000";
				break;
				case '10':
				$exp = " 64.000/85.000";
				break;
				case '11':
				$exp = " 85.000/100.000";
				break;
				case '12':
				$exp = "100.000/120.000";
				break;
				case '13':
				$exp = "120.000/140.000";
				break;
				case '14':
				$exp = "140.000/165.000";
				break;
				case '15':
				$exp = "165.000/195.000";
				break;
				case '16':
				$exp = "195.000/225.000";
				break;
				case '17':
				$exp = "225.000/265.000";
				break;
				case '18':
				$exp = "265.000/305.000";
				break;
				case '19':
				$exp = "305.000/355.000";
				break;
				case '20':
				$exp = "355.000/355.000";
				break;
			}
			
				switch ($atitude){
				case '1':
				$atitude = "Leal";
				break;
				case '2':
				$atitude = "Neutro";
				break;
				case '3':
				$atitude = "Caótico";
				break;
				}
				
				switch ($moralidade){
				case '1':
				$moralidade = "Bom";
				break;
				case '2':
				$moralidade = "Neutro";
				break;
				case '3':
				$moralidade = "Mal";
				break;
				}
							
				$tendencia = "$atitude/$moralidade";
								
				
				
				if($forca < 10){
					$forca = "0$forca";
				}else{}
				if($destreza < 10){
					$destreza = "0$destreza";
				}else{}
				if($constituicao < 10){
					$constituicao = "0$constituicao";
				}else{}
				if($inteligencia < 10){
					$inteligencia = "0$inteligencia";
				}else{}
				if($sabedoria < 10){
					$sabedoria = "0$sabedoria";
				}else{}
				if($carisma < 10){
					$carisma = "0$carisma";
				}else{}
						
				
				/*
					0 = raça
					1-5 - sub raças
					6 - classe
							**********7-13 - arq
					20 - nivel
					21 - antecedente
					22 - proficiencia
					23 - exp
					24 - personagem
					25 - tendencia
					26-31 - atributos
					32 - 37 - mod atri
					38 itens
					39 deslocamento
				*/
			return array($raca, $sra, $sre, $srh, $srhu, $srg, $classe, $arq_bar, $arq_bard, $arq_bruxoF, $arq_bruxoP, $arq_cle, $arq_dru, $arq_feit, $arq_gue, $arq_ladi, $arq_mago, $arq_mong, $arq_pala, $arq_patr, $nivel, $antecedente, $profi, $exp, $perso, $tendencia, $forca, $destreza, $constituicao, $inteligencia, $sabedoria, $carisma, $forcaMod, $destrezaMod, $constituicaoMod, $inteligenciaMod, $sabedoriaMod, $carismaMod, $itens, $deslocamento, $vida, $dvida);
		}
		
		public function modificador($atributo){
			if($atributo == 1){
				return(" -5");
			}Else if($atributo == 2 || $atributo == 3){
				return(" -4");
			}Else if($atributo == 4 || $atributo == 5){
				return(" -3");
			}Else if($atributo == 6 || $atributo == 7){
				return(" -2");
			}Else if($atributo == 8 || $atributo == 9){
				return(" -1");
			}Else if($atributo == 10 || $atributo == 11){
				return("  0");
			}Else if($atributo == 12 || $atributo == 13){
				return(" +1");
			}Else if($atributo == 14 || $atributo == 15){
				return(" +2");
			}Else if($atributo == 16 || $atributo == 17){
				return(" +3");
			}Else if($atributo == 18 || $atributo == 19){
				return(" +4");
			}Else if($atributo == 20 || $atributo == 21){
				return(" +5");
			}Else if($atributo == 22 || $atributo == 23){
				return(" +6");
			}Else if($atributo == 24 || $atributo == 25){
				return(" +7");
			}Else if($atributo == 26 || $atributo == 27){
				return(" +8");
			}Else if($atributo == 28 || $atributo == 29){
				return(" +9");
			}Else if($atributo == 30){
				return("+10");
			}
		}
		
		public function atributosRaca($rac_cod,$rac,$sra,$sre,$srh,$srhu,$srg,$nivel,$classe){
			$inc_total = 27;	
			$inc_extra = 0;	
			if($classe !== "Guerreiro"){
				if($nivel < 4){
					$inc_extra = 0;	
				}else if($nivel >= 4 && $nivel < 8){
					$inc_extra = 2;
				}else if($nivel >= 8 && $nivel < 12){
					$inc_extra = 4;
				}else if($nivel >= 12 && $nivel < 16){
					$inc_extra = 6;
				}else if($nivel >= 16 && $nivel < 19){
					$inc_extra = 8;
				}else if($nivel >= 19){
					$inc_extra = 10;
				}
			}else{
				if($nivel < 4){
					$inc_extra = 0;	
				}else if($nivel >= 4 && $nivel < 6){
					$inc_extra = 2;
				}else if($nivel >= 6 && $nivel < 8){
					$inc_extra = 4;
				}else if($nivel >= 8 && $nivel < 12){
					$inc_extra = 6;
				}else if($nivel >= 12 && $nivel < 14){
					$inc_extra = 8;
				}else if($nivel >= 14 && $nivel < 16){
					$inc_extra = 10;
				}else if($nivel >= 16 && $nivel < 19){
					$inc_extra = 12;
				}else if($nivel >= 19){
					$inc_extra = 14;
				}
			}
			include_once 'conexao.class.php';
			$conectar = new conexao;
			$conn = $conectar->getConexao();
			if($rac_cod == 1 || $rac_cod == 2 || $rac_cod == 3 || $rac_cod == 4 || $rac_cod == 6){ 
				if($rac_cod == 1){
					$cmd = "Select raca_inc_for, raca_inc_des, raca_inc_con, raca_inc_int, raca_inc_sab, raca_inc_car from raca_inc where raca_inc_nome ='$sra'";
				}else if($rac_cod == 2){
					$cmd = "Select raca_inc_for, raca_inc_des, raca_inc_con, raca_inc_int, raca_inc_sab, raca_inc_car from raca_inc where raca_inc_nome ='$sre'";
				}else if($rac_cod == 3){
					$cmd = "Select raca_inc_for, raca_inc_des, raca_inc_con, raca_inc_int, raca_inc_sab, raca_inc_car from raca_inc where raca_inc_nome ='$srh'";
				}else if($rac_cod == 4){
					$cmd = "Select raca_inc_for, raca_inc_des, raca_inc_con, raca_inc_int, raca_inc_sab, raca_inc_car from raca_inc where raca_inc_nome ='$srhu'";
					if($srhu == 4.2){
						$inc_total = 29;
					}
				}else if($rac_cod == 6){
					$cmd = "Select raca_inc_for, raca_inc_des, raca_inc_con, raca_inc_int, raca_inc_sab, raca_inc_car from raca_inc where raca_inc_nome ='$srg'";
				}
			}else{
				$cmd = "Select raca_inc_for, raca_inc_des, raca_inc_con, raca_inc_int, raca_inc_sab, raca_inc_car from raca_inc where raca_inc_nome ='$rac'";
			}
			
			$result_inc = mysqli_query($conn, $cmd);
			$row_inc = mysqli_fetch_assoc($result_inc);
			$row_inc['raca_inc_for'] +=8;
			$row_inc['raca_inc_des'] +=8;
			$row_inc['raca_inc_con'] +=8;
			$row_inc['raca_inc_int'] +=8;
			$row_inc['raca_inc_sab'] +=8;
			$row_inc['raca_inc_car'] +=8;
			return array($row_inc['raca_inc_for'],$row_inc['raca_inc_des'],$row_inc['raca_inc_con'],$row_inc['raca_inc_int'],$row_inc['raca_inc_sab'],$row_inc['raca_inc_car'],$inc_total, $inc_extra);
		}	
		
		public function profClass($classe){
			include_once 'conexao.class.php';
			$conectar = new conexao;
			$conn = $conectar->getConexao();
			$result_prof = mysqli_query($conn, "select prof_classe_desc from prof_classe where prof_classe_nome='$classe'");
			$row_prof = mysqli_fetch_assoc($result_prof);
			$prof_class = $row_prof['prof_classe_desc'];
			$prof_class = str_replace("<b>", "", "$prof_class");
			$prof_class = str_replace("</b>", "", "$prof_class");
			$prof_class = str_replace("<br>", "", "$prof_class");
			$_SESSION['prof_class'] = $prof_class;
		}
		
		public function salvar($cod, $id){
			include_once 'conexao.class.php';
			$conectar = new conexao;
			$conn = $conectar->getConexao();
			$cmd = "INSERT INTO personagem(perso, nome) VALUES(
					'".$cod."',
					'".$id."')";
			$result = mysqli_query($conn, $cmd);
		}
		
		public function item($classe){
			include_once 'conexao.class.php';
			$conectar = new conexao;
			$conn = $conectar->getConexao();
			$cmd = "Select tipo, item from item where classe = $classe limit 0,1";
			//Select tipo from item where classe = $classe limit 0,100
			$result = mysqli_query($conn, $cmd);
			$row_item = mysqli_fetch_assoc($result);
			$i = 1;
			while($i <= 5){
				$cmdT1 = "select item, tipo, count(*) as contador from item where tipo like '".$i.".%' and classe='$classe'";
				$result_tipo = mysqli_query($conn, $cmdT1);
				$row_tipo = mysqli_fetch_assoc($result_tipo);
				$o = 0;
				$p = 1;
				if($row_tipo['contador'] !== 0){
					while($o < $row_tipo['contador']){
						if($o == 0){
							$chk = "checked";
						}else{
							$chk = "";
						}
						$cmdT2 = "select item from item where tipo like '".$i.".%' and classe='$classe' limit ".$o.",1";
						$result_tipo2 = mysqli_query($conn, $cmdT2);
						$row_tipo2 = mysqli_fetch_assoc($result_tipo2);
						echo "<label class='col s12' id='itemselect'><input class='flow-text'name='item".$i."' type='radio' value='".$i.".".$p."' required ".$chk." /><span>".$row_tipo2['item']."&nbsp;</span></label>";
						$o++;
						$p++;
					}
					echo "<br><br>";
				}
				$i++;
			}
		}
		
		
					/*
					select nome_pessoal from pessoal where nome_pessoal like 'A%';
					
					<label>
						<input name="item1" type="radio" value="1.1" checked />
						<span>Um machado Grande</span>
					</label>*/
		
		public function desSessionar(){
			unset($_SESSION['cod'], $_SESSION['personagem'], $_SESSION['destrezaMod'], $_SESSION['forcaMod'], $_SESSION['constituicaoMod'], $_SESSION['inteligenciaMod'], $_SESSION['sabedoriaMod'], $_SESSION['carismaMod'], $_SESSION['proficiencia'], $_SESSION['forca'], $_SESSION['destreza'], $_SESSION['constituicao'], $_SESSION['inteligencia'], $_SESSION['sabedoria'], $_SESSION['carisma'], $_SESSION['classe'], $_SESSION['nivel'], $_SESSION['antecedente'], $_SESSION['raca'], $_SESSION['experiencia'], $_SESSION['tendencia'],	$_SESSION['itens'], $_SESSION['ante_itens'], $_SESSION['hab_rac'], $_SESSION['hab_ante'], $_SESSION['hab_class'], $_SESSION['hab'], $_SESSION['arq'], $_SESSION['deslocamento'], $_SESSION['vida'], $_SESSION['dvida'], $_SESSION['prof_class']);
		}
		
		public function sessionar($info){
			$_SESSION['raca']=$info[0];
			$_SESSION['classe']=$info[6];
			$_SESSION['nivel']=$info[20];
			$_SESSION['antecedente']=$info[21];
			$_SESSION['proficiencia']=$info[22];
			$_SESSION['experiencia']=$info[23];
			$_SESSION['personagem']=$info[24];
			$_SESSION['tendencia']=$info[25];
			$_SESSION['forca']=$info[26];
			$_SESSION['destreza']=$info[27];
			$_SESSION['constituicao']=$info[28];
			$_SESSION['inteligencia']=$info[29];
			$_SESSION['sabedoria']=$info[30];
			$_SESSION['carisma']=$info[31];
			$_SESSION['forcaMod']=$info[32];
			$_SESSION['destrezaMod']=$info[33];
			$_SESSION['constituicaoMod']=$info[34];
			$_SESSION['inteligenciaMod']=$info[35];
			$_SESSION['sabedoriaMod']=$info[36];
			$_SESSION['carismaMod']=$info[37];
			$_SESSION['itens']=$info[38];
			$_SESSION['deslocamento']=$info[39];
			$_SESSION['vida']=$info[40];
			$_SESSION['dvida']=$info[41];
			
			if($info[7] !== "0"){
				$_SESSION['arq'] = str_replace("Caminho do", "",$info[7]);
			}else if($info[8] !== "0"){
				$str = array("Colégio do","Colégio da");
				$_SESSION['arq'] = str_replace($str, "",$info[8]);				
			}else if($info[11] !== "0"){
				$str = array("Domínio do","Domínio da");
				$_SESSION['arq'] = str_replace($str, "",$info[11]);					
			}else if($info[12] !== "0"){
				$_SESSION['arq'] = str_replace("Círculo", "",$info[11]);				
			}else if($info[13] !== "0"){
				$str = array("Linhagem","Magia");
				$_SESSION['arq'] = str_replace($str, "",$info[13]);				
				$_SESSION['arq'] = str_replace("Dracônica", "Dracônico",$info[13]);				
			}else if($info[14] !== "0"){
				$_SESSION['arq'] = $info[14];	
			}else if($info[15] !== "0"){
				$_SESSION['arq'] = $info[15];	
			}else if($info[16] !== "0"){
				$_SESSION['arq'] = str_replace("Escola", "",$info[16]);	
			}else if($info[17] !== "0"){
				$_SESSION['arq'] = str_replace("Caminho", "",$info[17]);	
			}else if($info[18] !== "0"){
				$_SESSION['arq'] = str_replace("Juramento", "",$info[18]);
			}else if($info[19] !== "0"){
				$_SESSION['arq'] = str_replace("Conclave do", "",$info[19]);	
				$_SESSION['arq'] = str_replace("da", "de",$info[19]);	
			}
		}
		/*
		$cod = "$info[0]|$info[1]|$info[2]|$info[3]|$info[4]|$info[5]|$info[6]|$info[7]|$info[8]|$info[9]|$info[10]|$info[11]|$info[12]|
		$info[13]|$info[14]|$info[15]|$info[16]|$info[17]|$info[18]|$info[19]|$info[20]|$info[21]|$info[22]|$info[23]|$info[24]|$info[25]|
		$info[26]|$info[27]|$info[28]|$info[29]|$info[30]|$info[31]|$info[32]|$info[33]|$info[34]|$info[35]|$info[36]|$info[37]|";
		*/
		
		/*$raca,
		$sra,
		$sre,
		$srh,
		$srhu,
		$srg,
		$classe,
		$arq_bar, 
		$arq_bard,
		$arq_bruxoF,
		$arq_bruxoP,
		$arq_cle,
		$arq_dru,
		$arq_feit,
		$arq_gue,
		$arq_ladi,
		$arq_mago, 
		$arq_mong, 
		$arq_pala, 
		$arq_patr, 
		$nivel, 
		$antecedente,
		$profi,
		$exp, 
		$perso,
		$tendencia,
		$forca,
		$destreza,
		$constituicao,
		$inteligencia, 
		$sabedoria, 
		$carisma, 
		$forcaMod,
		$destrezaMod,
		$constituicaoMod,
		$inteligenciaMod,
		$sabedoriaMod, 
		$carismaMod*/
		
		/*
					24 - personagem
					0 = raça
					1-5 - sub raças
					6 - classe
					7-19 - arq - 9,10
					20 - nivel
					21 - antecedente
					22 - proficiencia
					23 - exp
					25 - tendencia
					26-31 - atributos
					32 - 37 - mod atri
					
				*/
		
		public function separar($consulta){
			$separado = explode ("|", $consulta);
			return array($separado[1], $separado[2], $separado[3], $separado[4], $separado[5], $separado[6], $separado[7], $separado[8], $separado[9], $separado[10], $separado[11], $separado[12], $separado[13], $separado[14], $separado[15], $separado[16], $separado[17], $separado[18], $separado[19], $separado[20], $separado[21], $separado[22], $separado[23], $separado[24], $separado[0], $separado[25], $separado[26], $separado[27], $separado[28], $separado[29], $separado[30], $separado[31], $separado[32], $separado[33], $separado[34], $separado[35], $separado[36], $separado[37], $separado[38], $separado[39], $separado[40], $separado[41]);
			//return($separado[1]);
		}
		
		public function consultaItens($itens0, $itens1, $itens2, $itens3, $itens4, $classe){
			include_once 'conexao.class.php';
			$conectar = new conexao;
			$conn = $conectar->getConexao();
			$todos = array($itens0, $itens1, $itens2, $itens3, $itens4);
			$i = null;
			foreach($todos as $cada)
			{
				if($cada !== null){
					$cmd = "Select item from item where classe = $classe and tipo = $cada";
					$result_cada = mysqli_query($conn, $cmd);
					$row_cada = mysqli_fetch_assoc($result_cada);
					$i.= $row_cada['item'].".
					";
				}
			}
			return($i);
		}
		
		
		
		
		public function mostraFicha()
		{
			print('<center><h3>Personagem de Nível '.$this->nivel.'<h3/></center>');

			include('ficha.class_includes/raca.php');

			include('ficha.class_includes/sub_racas/sub_raca_anao.php');

			include('ficha.class_includes/sub_racas/sub_raca_elfo.php');

			include('ficha.class_includes/sub_racas/sub_raca_halfling.php');

			include('ficha.class_includes/sub_racas/sub_raca_humano.php');

			include('ficha.class_includes/sub_racas/sub_raca_gnomo.php');

			include('ficha.class_includes/classes/barbaro.php');

			include('ficha.class_includes/arquetipos/barbaro/caminho_do_furioso.php');

			include('ficha.class_includes/arquetipos/barbaro/caminho_do_guerreiro_totemico.php');

			include('ficha.class_includes/classes/bardo.php');

			include('ficha.class_includes/arquetipos/bardo/colegio_do_conhecimento.php');

			include('ficha.class_includes/arquetipos/bardo/colegio_da_bravura.php');

			include('ficha.class_includes/classes/bruxo.php');

			include('ficha.class_includes/arquetipos/bruxo/patronos/a_arquifada.php');

			include('ficha.class_includes/arquetipos/bruxo/patronos/o_corruptor.php');

			include('ficha.class_includes/arquetipos/bruxo/patronos/o_grande_antigo.php');

			include('ficha.class_includes/arquetipos/bruxo/dadivas/pacto_da_corrente.php');

			include('ficha.class_includes/arquetipos/bruxo/dadivas/pacto_da_lamina.php');

			include('ficha.class_includes/arquetipos/bruxo/dadivas/pacto_do_tomo.php');

			include('ficha.class_includes/classes/clerigo.php');

			include('ficha.class_includes/arquetipos/clerigo/dominio_do_conhecimento.php');

			include('ficha.class_includes/arquetipos/clerigo/dominio_da_enganacao.php');

			include('ficha.class_includes/arquetipos/clerigo/dominio_da_guerra.php');

			include('ficha.class_includes/arquetipos/clerigo/dominio_da_luz.php');

			include('ficha.class_includes/arquetipos/clerigo/dominio_da_natureza.php');

			include('ficha.class_includes/arquetipos/clerigo/dominio_da_tempestade.php');

			include('ficha.class_includes/arquetipos/clerigo/dominio_da_vida.php');

			include('ficha.class_includes/classes/druida.php');

			include('ficha.class_includes/arquetipos/druida/circulo_da_terra.php');

			include('ficha.class_includes/arquetipos/druida/circulo_da_lua.php');

			include('ficha.class_includes/classes/feiticeiro.php');

			include('ficha.class_includes/arquetipos/feiticeiro/linhagem_draconica.php');

			include('ficha.class_includes/arquetipos/feiticeiro/magia_selvagem.php');

			include('ficha.class_includes/classes/guerreiro.php');

			include('ficha.class_includes/arquetipos/guerreiro/campeao.php');

			include('ficha.class_includes/arquetipos/guerreiro/cavaleiro_arcano.php');

			include('ficha.class_includes/arquetipos/guerreiro/mestre_de_batalha.php');

			include('ficha.class_includes/classes/ladino.php');

			include('ficha.class_includes/arquetipos/ladino/assassino.php');

			include('ficha.class_includes/arquetipos/ladino/ladrao.php');

			include('ficha.class_includes/arquetipos/ladino/trapaceiro_arcano.php');

			include('ficha.class_includes/classes/mago.php');

			include('ficha.class_includes/arquetipos/mago/escola_de_abjuracao.php');

			include('ficha.class_includes/arquetipos/mago/escola_de_adivinhacao.php');

			include('ficha.class_includes/arquetipos/mago/escola_de_conjuracao.php');

			include('ficha.class_includes/arquetipos/mago/escola_de_encantamento.php');

			include('ficha.class_includes/arquetipos/mago/escola_de_evocacao.php');

			include('ficha.class_includes/arquetipos/mago/escola_de_ilusao.php');

			include('ficha.class_includes/arquetipos/mago/escola_de_necromancia.php');

			include('ficha.class_includes/arquetipos/mago/escola_de_transmutacao.php');

			include('ficha.class_includes/classes/monge.php');

			include('ficha.class_includes/arquetipos/monge/caminho_da_mao_aberta.php');

			include('ficha.class_includes/arquetipos/monge/caminho_da_sombra.php');

			include('ficha.class_includes/arquetipos/monge/caminho_dos_quatro_elementos.php');

			include('ficha.class_includes/classes/paladino.php');

			include('ficha.class_includes/arquetipos/paladino/juramento_de_devocao.php');

			include('ficha.class_includes/arquetipos/paladino/juramento_dos_ancioes.php');

			include('ficha.class_includes/arquetipos/paladino/juramento_de_vinganca.php');

			include('ficha.class_includes/classes/patrulheiro.php');

			include('ficha.class_includes/arquetipos/patrulheiro/conclave_da_besta.php');

			include('ficha.class_includes/arquetipos/patrulheiro/conclave_do_cacador.php');

			include('ficha.class_includes/arquetipos/patrulheiro/conclave_do_rastreador_subterraneo.php');

			include('ficha.class_includes/antecedente.php');
		}
	}
?>