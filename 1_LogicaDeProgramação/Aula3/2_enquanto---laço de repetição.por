programa
{
	
	funcao inicio()
	{
		inteiro num, total=0

		escreva("Digite o nº:")
		leia(num)
		
		enquanto(num != 0){
			total += num
			escreva("Digite o nº:")
			leia(num)
		}	
		
		escreva("Fim de Programa!")
		escreva("total:",total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 245; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */