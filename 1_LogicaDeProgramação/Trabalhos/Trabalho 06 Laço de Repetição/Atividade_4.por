programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro num = 0, tabuada = 0
		escreva("Escreva um número: ")
		leia(num)

		escreva("A tabuada do número ", num, " é:")
		
		para(inteiro i=1; i <= 10; i++){
			tabuada = num * i
			escreva(" ", tabuada)
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
 * @POSICAO-CURSOR = 182; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */