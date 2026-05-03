programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro num
		
		escreva("Digite um número: ")
		leia(num)
		limpa()

		se(nao(num < 0)){
			escreva("O número ",num, " é positivo! :D")
		}senao{
			escreva("O número ",num, " NÃO é positivo! :|")
		}

		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 142; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */