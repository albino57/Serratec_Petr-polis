programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		real media
		inteiro freq
		
		escreva("Digite sua média: ")
		leia(media)
		limpa()

		escreva("Digite sua Frequência: ")
		leia(freq)
		limpa()

		se((media >= 4 e media < 7) ou freq < 75){
			escreva("Você pode fazer a prova final! :D")
			
		}senao{
			escreva("Você NÃO pode fazer a prva final")
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
 * @POSICAO-CURSOR = 209; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */