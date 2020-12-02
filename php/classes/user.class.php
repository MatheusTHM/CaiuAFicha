<?php
	
	class User{
		private $logado;
		private $nome;
		private $email;
		private	$descricao;		
		//VVVVVVVVVVVVVVVVVVVVVVVVV
		function __construct(){
            $this->logado = false;
            $this->nome = "";
            $this->email = "";
            $this->descricao = "";
        }
		
		
		public function setLogado ($logado){
			$this->logado = $logado;
		}
		
		public function setNome ($nome){
			$this->nome = $nome;
		}
		public function setEmail ($email){
			$this->email = $email;
		}
		
		public function setDescricao ($descricao){
			$this->descricao = $descricao;
		}

		public function getLogado(){
			return $this->logado;
		}
		
		public function getNome(){
			return $this->nome;
		}
		
		public function getEmail(){
			return $this->email;
		}
		
		public function getDescricao(){
			return $this->descricao;
		}
		
	}
	
?>