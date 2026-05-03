programa
{
	inclua biblioteca Util
	
	funcao inicio(){
		inteiro num=-1
		
		enquanto (num < 0){
			
			escreva("Digite algum número inteiro: ")
			leia(num)
			limpa()
			
			se(num >= 0){
				
				se((num % 2) == 0){
					escreva("O número ", num, " é PAR!")
				}senao{
					escreva("O número ", num, " é IMPAR!")
				}
				
			}senao{
				
				escreva("Número digitado não é válido!")
				Util.aguarde(3000)
				limpa()
				
			}
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
 * @POSICAO-CURSOR = 454; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */