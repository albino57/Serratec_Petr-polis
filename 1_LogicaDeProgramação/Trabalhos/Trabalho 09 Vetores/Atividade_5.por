programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro array[5]

		para(inteiro i = 0; i < 5; i++){
			escreva("Digite o ", i+1,"º número: ")
			leia(array[i])
			limpa()
		}

		escreva("Array invertivo: ")
		para(inteiro i = 4; i >= 0; i--){
			escreva(array[i], " ")
			
		}

		
		Util.aguarde(1000)
		escreva("\n") //Fim do programa!
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 254; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */