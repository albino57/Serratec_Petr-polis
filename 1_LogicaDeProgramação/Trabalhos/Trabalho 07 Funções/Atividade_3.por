programa
{
	inclua biblioteca Util

	funcao logico ehPar(inteiro num1){
	
		retorne ((num1 % 2) == 0)
	}
	
	funcao inicio()
	{
		inteiro num
		cadeia resposta
		
		escreva("Digite um número para saber se é Par ou Ímpar: ")
		leia(num)

		se(ehPar(num) == verdadeiro){
			resposta = "Par"
		}senao{
			resposta = "Ímpar"
		}

		escreva("O número ",num, " é ", resposta)

		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 323; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */