programa
{
	inclua biblioteca Util

	funcao inteiro fatorial(inteiro n){
		inteiro resultado = 1
		para(n; n>0; n--){
			resultado = resultado * n
		}
		retorne resultado
	}
	
	funcao inicio()
	{
		inteiro fat
		escreva("Digite um número: ")
		leia(fat)
		escreva("\n O fatorial é: ", fatorial(fat))

		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 308; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */