programa
{
	inclua biblioteca Util
	
	funcao vazio contagemRegressiva(inteiro n){
		escreva("Imprimindo números: ")
		para(inteiro i=n; i >= 0; i--){
			escreva(i, " ")
		}
	}
	
	funcao inicio()
	{
		inteiro n
		escreva("Digite um número de contagem regressiva: ")
		leia(n)
		contagemRegressiva(n)

		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 174; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */