programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro soma=0, array[5]

		para(inteiro i = 0; i < 5; i++){
			escreva("Digite o ", i+1,"º número: ")
			leia(array[i])
			limpa()
		}
		
		para(inteiro i = 0; i < 5; i++){
			soma += array[i]
		}

		escreva("A soma do array é: ", soma)
		
		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 161; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */