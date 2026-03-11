programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro num, comeco=0, soma=0
		
		escreva("Digite um número: ")
		leia(num)

		enquanto(comeco <= num){
			soma = soma + comeco + num
			comeco++
			escreva(" ", soma)
		}
		escreva("\nSoma: ", soma)
		
		Util.aguarde(1000)
		escreva("\n\n") //Fim do programa!
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 186; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */