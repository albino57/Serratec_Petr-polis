programa
{
	inclua biblioteca Util
	
	funcao inteiro soma(inteiro n){
		inteiro resultado = 1
		para(inteiro i=0; i<n; i++){
			resultado = resultado + (n-1)
		}
		retorne resultado
	}
	
	funcao inicio()
	{
		inteiro num
		escreva("Digite um número: ")
		leia(num)
		escreva("\n A soma de todos são: ", soma(num))


		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 11; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */