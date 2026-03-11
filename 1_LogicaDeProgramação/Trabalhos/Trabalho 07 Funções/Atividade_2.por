programa
{
	inclua biblioteca Util

	funcao inteiro quadrado(inteiro num1){
		
		retorne num1 * num1
	}
	
	funcao inicio()
	{
		inteiro num1
		
		escreva("Digite um número para elevar ao ²: ")
		leia(num1)

		escreva("O número ", num1, "² é: ", quadrado(num1))
		
		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 242; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */