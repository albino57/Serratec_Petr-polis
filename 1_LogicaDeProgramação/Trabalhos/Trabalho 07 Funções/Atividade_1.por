programa
{
	inclua biblioteca Util
	
	funcao inteiro somar(inteiro num1, inteiro num2){
		
		retorne num1 + num2
	}
	
	funcao inicio(){

		inteiro num1, num2
		escreva("Digite 2 números para soma: ")
		leia (num1, num2)

		escreva("A soma dos números são: ", somar(num1, num2))

		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 60; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */