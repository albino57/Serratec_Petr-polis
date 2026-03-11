programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro num
		escreva("Digite um número: ")
		leia(num)
		limpa()

		se(num >= 10 e num <= 50){
			escreva("Você digitou um número dentro do range de 10 a 50! E o número é ", num)
		}senao{
			escreva("O número ", num, " não está dentro do range de 10 a 50!")
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
 * @POSICAO-CURSOR = 321; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */