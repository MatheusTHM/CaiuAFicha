  $(document).ready(function(){
	//Sidenav - Menu Lateral
	$('.sidenav').sidenav();
	$('.dropdown-trigger').dropdown();
    //Select Raça
	$('select#raca').formSelect();
	$('select#aa').formSelect();
	$('select#tipo').formSelect();
	$('select#lore').formSelect();
  });
  

	function checarR(id,value){
		 c = value;
		if(c == 1 || c == 2 || c == 3 || c == 4 || c == 6){
			base(id);
		}
		else{
			base(id);
			$(document).ready(function(){
			$('select#classe').formSelect();
			});
		}
	}
 
  var R;
  var N;
  /*
  Função Guarda Um para selects da raça, guarda a escolha anterior do select para poder usar o Destroy e faze-la sumir, para não ter selects desnecessários
  */
  function guardaUmR(res){
	  if(N == null){
		N = res;
	  }else{
		  R = N;
		  N = res;
	  }
	  return R;
  }
  
  function base(raca){
	 sl = document.getElementById(raca);
	
		  if(sl.value == 1){
			   S = "racaA";
			  guardaUmR(S);
		  }
		  else if(sl.value == 2){
			   S = "racaE";
			  guardaUmR(S);
		  }
		  else if(sl.value == 3){
			   S = "racaH";
			  guardaUmR(S);
		  }
		  else if(sl.value == 4){
			   S = "racaHu";
			  guardaUmR(S);
		  }
		  else if(sl.value == 6){
			   S = "racaG";
			  guardaUmR(S);
		  }
		  else{
			   S = "classe";
			  guardaUmR(S);
		  }
		  
	$(document).ready(function(){
	  $('select#'+S).formSelect();
	  $('select#'+R).formSelect('destroy');
	 });


  }  
  
  function mostraClasse(valor){
  	sub = valor;
	 $(document).ready(function(){
	 $('select#classe').formSelect();
	 }); 
  }
  
    function mostraTende(){
	 $(document).ready(function(){
	 $('select#atitude').formSelect();
	 $('select#moralidade').formSelect();
	 }); 
  }    
	function mostraAnte(){
	 $(document).ready(function(){
	 $('select#antecedente').formSelect();
	 }); 
  }
  
    function mostraNiv(){
	 $(document).ready(function(){
	 $('select#nivel').formSelect();
	 }); 
  }
  
  var AA;
  var A;
  
  function guardaUmA(ar){
	  if(AA == null){
		AA = ar;
	  }else{
		  A = AA;
		  AA = ar;
	  }
	  return A;
  }
  
  //var extra = ",select#arq-bruxoP"; var arq = "arq-feit" $('select#'+arq).formSelect();
  
  var extra;
  //fazer um identificador de id para mostrar os arquétipos de cada classe para o usuário escolher
	  function arquetipo(value){
		 slA = value;
	
		  if(slA == 1){
			  var arq = "arq-bar";
		  }
		  else if(slA == 2){
			  var arq = "arq-bard";
		  }
		  else if(slA == 3){
			  var extra = ",select#arq-bruxoP";
			  var arq = "arq-bruxoF"+extra;
		  }
		  else if(slA == 4){
			  var arq = "arq-cle";
		  }
		  else if(slA == 5){
			  var arq = "arq-dru";
		  }
		  else if(slA == 6){
			  var arq = "arq-feit";
		  }
		  else if(slA == 7){
			  var arq = "arq-gue";
		  }
		  else if(slA == 8){
			  var arq = "arq-ladi";
		  }
		  else if(slA == 9){
			  var arq = "arq-mago";
		  }
		  else if(slA == 10){
			  var arq = "arq-mong";
		  }
		  else if(slA == 11){
			  var arq = "arq-pala";
		  }
		  else if(slA == 12){
			  var arq = "arq-patr";
		  }
		  
		guardaUmA(arq);
		  
		$(document).ready(function(){
		  $('select#'+A).formSelect('destroy');
		 });
		return (arq);
	}
	
	
		
	//se a classe for bruxo clérigo ou feiticeiro, mostrar as opções de nível 1, caso não seja, mandar para a função arquétipo
	function checarC(id,value){
	   var id = id;
	    classe = value;
	   guardaC (classe);
	   
	   
	   if(classe == 3)
	   {
		  var arq = "arq-bruxoF";
		  guardaUmA(arq);
	   }else if(classe == 4)
	   {
	     var arq = "arq-cle";
		 guardaUmA(arq);
	   }else if(classe == 6)
	   {
		 var arq = "arq-feit";
	     guardaUmA(arq);
	   }else
	   {
		  arquetipo(classe);
		  mostraNiv();
		  $(document).ready(function(){
		  $('select#arq-bruxoP').formSelect('destroy');
		 });
		  
	   }
	   $(document).ready(function(){
		  $('select#'+arq).formSelect();
		  $('select#'+A).formSelect('destroy');
		 });
		
	}
  //fazer um if de confirmação entre a classe e o nível para decidir se mostra o arquétipo
	var CC;
	var C;
	
	function guardaC(classe){
	  if(CC == null){
		CC = classe;
	  }else{
		  C = CC;
		  CC = classe;
	  }
	  return C;
	}
	
	//confirma nível com classe para mostrar arquétipo
	function confirmaNC(id,value){
		 nivel = value;
		var classe_atual = guardaC();
		//34569
	   if(nivel >= 2 && classe_atual == 5){//druida lv 2
		   atv = arquetipo(classe_atual);
		}
		else if(nivel >= 2 && classe_atual == 9){//mago lv 2
			atv = arquetipo(classe_atual);
		}if(nivel >= 3 && classe == 3){
		   atv = "arq-bruxoP";
	   }else if(nivel >= 3 && classe_atual !== 4 && classe_atual !== 5 && classe_atual !== 6 && classe_atual !== 9){
			atv = arquetipo(classe_atual);
		}else if(nivel == 2 && classe_atual == 5){
			atv = arquetipo(classe_atual);
		}else if(nivel == 2 && classe_atual == 9){
			atv = arquetipo(classe_atual);
		}else if(nivel <= 2 && classe_atual == 3){
			$(document).ready(function(){
				$('select#arq-bruxoP').formSelect('destroy');
			});
			atv = "arq-bruxoF";
		}else if(nivel <= 2 && classe_atual == 4){
			atv = arquetipo(classe_atual);
		}else if(nivel <= 2 && classe_atual == 6){
			atv = arquetipo(classe_atual);
		}else if(nivel <= 3 && classe_atual !== 4 && classe_atual !== 5 && classe_atual !== 6 && classe_atual !== 9){
			atv = arquetipo();
		}
		
		$(document).ready(function(){
		$('select#'+atv).formSelect();
		$('select#'+deletar).formSelect('destroy');
		}); 
	}

	
	
	
	
	
	
	function diminuirT(id){
	var input = document.getElementById ("total");
	var inputE = document.getElementById ("extra");
		if(input.value > 0){
			var input2 = document.getElementById (id);
			if(input2.value < 15){
				if(input2.value >= 13 && input.value >= 2){
					input.value--;
					input.value--;
					aumentar(id)
					aumentarH(id)
				}else if(input2.value >= 13 && input.value < 2){
				}
				else{
					input.value--;
					aumentar(id)
					aumentarH(id)
				}
			}
	    }else if(inputE.value > 0){
			var input2 = document.getElementById (id);
			if(input2.value < 20){
				inputE.value--;
				aumentar(id)
				aumentarH(id)
			}
		}
	}
	function aumentarT(id){
	var input = document.getElementById ("total");
	inputE = document.getElementById ("extra");
	inputEH = document.getElementById ("extraH");
	extra = inputEH.value;
	var input2 = document.getElementById (id);
		if(extra == inputE.value && input.value !== 0){
			if(input2.value > 8 && input2.value <= 15){
				if(input2.value > 13){
					input.value++;
					input.value++;
					diminuir(id)
					diminuirH(id)
				}else if(input2.value > 8){
					input.value++;
					diminuir(id)
					diminuirH(id)
				}
			}
		}else if(inputE.value == extra && input.value == 0 || inputE.value !== extra && input.value == 0){
			if(input2.value > 8){
				inputE.value++;
				diminuir(id)
				diminuirH(id)
			}
		}
	}
	function diminuir(id){
	var input = document.getElementById (id);
	input.value--;
	}
	function aumentar(id){
		var input = document.getElementById (id);
		input.value++;
	}	
	
	function diminuirH(id){
	var input = document.getElementById(id+'H');
	input.value--;
	}
	
	function aumentarH(id){
		var input = document.getElementById(id+'H');
		input.value++;
	}
	
 /*var i = 27;
	padrao = [15,14,13,12,10,8];
	forca;
	destreza;
	constituicao;
	inteligencia;
	sabedoria;
	carisma;*/
	
	
 
 
 
 